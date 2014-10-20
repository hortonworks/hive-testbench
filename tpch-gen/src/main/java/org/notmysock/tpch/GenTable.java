package org.notmysock.tpch;

import org.apache.hadoop.conf.*;
import org.apache.hadoop.fs.*;
import org.apache.hadoop.hdfs.*;
import org.apache.hadoop.io.*;
import org.apache.hadoop.io.compress.DefaultCodec;
import org.apache.hadoop.io.compress.SnappyCodec;
import org.apache.hadoop.util.*;
import org.apache.hadoop.filecache.*;
import org.apache.hadoop.mapreduce.*;
import org.apache.hadoop.mapreduce.lib.input.*;
import org.apache.hadoop.mapreduce.lib.output.*;
import org.apache.hadoop.mapreduce.lib.reduce.*;
import org.apache.commons.cli.*;
import org.apache.commons.*;

import java.io.*;
import java.nio.*;
import java.util.*;
import java.net.*;
import java.math.*;
import java.security.*;


public class GenTable extends Configured implements Tool {
	
	private static enum TableMappings {
		ALL("all"),
		CUSTOMERS("c"),
		SUPPLIERS("s"),
		NATION("l"),
		ORDERS("o"),
		PARTS("p");
		
		/*
		-T c   -- generate cutomers ONLY
		-T l   -- generate nation/region ONLY
		-T o   -- generate orders/lineitem ONLY
		-T p   -- generate parts/partsupp ONLY
		-T s   -- generate suppliers ONLY
		*/
		
		
		final String option;
		
		TableMappings(String option) {
			this.option = option;
		}
	}
	
    public static void main(String[] args) throws Exception {
        Configuration conf = new Configuration();
        int res = ToolRunner.run(conf, new GenTable(), args);
        System.exit(res);
    }

    @Override
    public int run(String[] args) throws Exception {
        String[] remainingArgs = new GenericOptionsParser(getConf(), args).getRemainingArgs();

        CommandLineParser parser = new BasicParser();
        getConf().setInt("io.sort.mb", 4);
        org.apache.commons.cli.Options options = new org.apache.commons.cli.Options();
        options.addOption("s","scale", true, "scale");
        options.addOption("t","table", true, "table");
        options.addOption("d","dir", true, "dir");
        options.addOption("p", "parallel", true, "parallel");
        options.addOption("text", "text", false, "text");
        options.addOption("snappy", "snappy", false, "snappy");
        CommandLine line = parser.parse(options, remainingArgs);

        if(!(line.hasOption("scale") && line.hasOption("dir"))) {
          HelpFormatter f = new HelpFormatter();
          f.printHelp("GenTable", options);
          return 1;
        }
        
        int scale = Integer.parseInt(line.getOptionValue("scale"));
        String table = "all";
        if(line.hasOption("table")) {
          table = line.getOptionValue("table");
          table = TableMappings.valueOf(table.toUpperCase()).option;
        }
        Path out = new Path(line.getOptionValue("dir"));

        int parallel = scale;

        if(line.hasOption("parallel")) {
          parallel = Integer.parseInt(line.getOptionValue("parallel"));
        }

        if(parallel == 1 || scale == 1) {
          System.err.println("The MR task does not work for scale=1 or parallel=1");
          return 1;
        }

        Path in = genInput(table, scale, parallel);

        Path dbgen = copyJar(new File("target/lib/dbgen.jar"));
        URI dsuri = dbgen.toUri();
        URI link = new URI(dsuri.getScheme(),
                    dsuri.getUserInfo(), dsuri.getHost(), 
                    dsuri.getPort(),dsuri.getPath(), 
                    dsuri.getQuery(),"dbgen");
        Configuration conf = getConf();
        conf.setInt("mapred.task.timeout",0);
        conf.setInt("mapreduce.task.timeout",0);
        DistributedCache.addCacheArchive(link, conf);
        Job job = new Job(conf, "GenTable+"+table+"_"+scale);
        job.setJarByClass(getClass());
        job.setNumReduceTasks(0);
        job.setMapperClass(dbgen.class);
        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(Text.class);

        job.setInputFormatClass(NLineInputFormat.class);
        NLineInputFormat.setNumLinesPerSplit(job, 1);

        FileInputFormat.addInputPath(job, in);
        FileOutputFormat.setOutputPath(job, out);

        // use multiple output to only write the named files
        LazyOutputFormat.setOutputFormatClass(job, TextOutputFormat.class);
        MultipleOutputs.addNamedOutput(job, "text", 
          TextOutputFormat.class, LongWritable.class, Text.class);

        if (line.hasOption("snappy") || (line.hasOption("text") == false)) {
          TextOutputFormat.setCompressOutput(job, true);
          if (line.hasOption("snappy")) {
             TextOutputFormat.setOutputCompressorClass(job, SnappyCodec.class);
          } else {
             TextOutputFormat.setOutputCompressorClass(job, DefaultCodec.class);
          }
        }

        boolean success = job.waitForCompletion(true);

        // cleanup
        FileSystem fs = FileSystem.get(getConf());
        
        fs.delete(in, false);
        fs.delete(dbgen, false);

        return 0;
    }

    public Path copyJar(File jar) throws Exception {
      MessageDigest md = MessageDigest.getInstance("MD5");
      InputStream is = new FileInputStream(jar);
      try {
        is = new DigestInputStream(is, md);
        // read stream to EOF as normal...
      }
      finally {
        is.close();
      }
      BigInteger md5 = new BigInteger(md.digest()); 
      String md5hex = md5.toString(16);
      Path dst = new Path(String.format("/tmp/%s.jar",md5hex));
      Path src = new Path(jar.toURI());
      FileSystem fs = FileSystem.get(getConf());
      fs.copyFromLocalFile(false, /*overwrite*/true, src, dst);
      return dst; 
    }

    public Path genInput(String table, int scale, int parallel) throws Exception {
        long epoch = System.currentTimeMillis()/1000;

        Path in = new Path("/tmp/"+table+"_"+scale+"-"+epoch);
        FileSystem fs = FileSystem.get(getConf());
        FSDataOutputStream out = fs.create(in);
        for(int i = 1; i <= parallel; i++) {
          if(table.equals("all")) {
            out.writeBytes(String.format("$DIR/dbgen/tools/dbgen -b $DIR/dbgen/tools/dists.dss -f -s %d -C %d -S %d\n", scale, parallel, i));
          } else {
        	out.writeBytes(String.format("$DIR/dbgen/tools/dbgen -b $DIR/dbgen/tools/dists.dss -f -s %d -C %d -S %d -T %s\n", scale, parallel, i, table));           
          }
        }
        out.close();
        return in;
    }

    static String readToString(InputStream in) throws IOException {
      InputStreamReader is = new InputStreamReader(in);
      StringBuilder sb=new StringBuilder();
      BufferedReader br = new BufferedReader(is);
      String read = br.readLine();

      while(read != null) {
        //System.out.println(read);
        sb.append(read);
        read =br.readLine();
      }
      return sb.toString();
    }

    static final class dbgen extends Mapper<LongWritable,Text, Text, Text> {
      private MultipleOutputs mos;
      protected void setup(Context context) throws IOException {
        mos = new MultipleOutputs(context);
      }
      protected void cleanup(Context context) throws IOException, InterruptedException {
        mos.close();
      }
      protected void map(LongWritable offset, Text command, Mapper.Context context) 
        throws IOException, InterruptedException {
        String parallel="1";
        String child="1";

        String[] cmd = command.toString().split(" ");

        for(int i=0; i<cmd.length; i++) {
          if(cmd[i].contains("$DIR")) {
            cmd[i] = cmd[i].replace("$DIR",(new File(".")).getAbsolutePath());
          }
          if(cmd[i].equals("-C")) {
            parallel = cmd[i+1];
          }
          if(cmd[i].equals("-S")) {
            child = cmd[i+1];
          }
        }

        Process p = Runtime.getRuntime().exec(cmd, null, new File("."));
        int status = p.waitFor();
        if(status != 0) {
          String err = readToString(p.getErrorStream());
          throw new InterruptedException("Process failed with status code " + status + "\n" + err);
        }

        File cwd = new File(".");
        final String suffix = String.format(".tbl.%s", child);
        final boolean firstMapper = child.equals("1");

        FilenameFilter tables = new FilenameFilter() {
          public boolean accept(File dir, String name) {
            return name.endsWith(suffix) || (name.endsWith(".tbl") && firstMapper);
          }
        };

        for(File f: cwd.listFiles(tables)) {
          BufferedReader br = new BufferedReader(new FileReader(f));          
          String line;
          String name = f.getName().replace(suffix,"/data").replace(".tbl", "/data");
          while ((line = br.readLine()) != null) {
            // process the line.
            mos.write("text", line, null, name);
          }
          br.close();
          f.deleteOnExit();
        }
      }
    }
}
