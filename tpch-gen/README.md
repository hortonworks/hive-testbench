Mapreduce TPC-H Generator
=========================

This simplifies creating tpc-h data-sets on large scales on a hadoop cluster.

To get set up, you need to run

	$ make 

this will download the TPC-h dbgen program, compile it and use maven to build the MR app wrapped around it.

To generate the data-sets, you need to run (say, for scale = 200, parallelism = 100)

	$ hadoop  jar target/tpch-gen-1.0-SNAPSHOT.jar   -d /user/hive/external/200/ -p 100 -s 200 

This uses the existing parallelism in the dbgen program without modification and uses it to run the command on multiple machines.

The command generates multiple files for each map task, resulting in each table having its own subdirectory.

Assumptions made are that all machines in the cluster are OS/arch/lib identical.
