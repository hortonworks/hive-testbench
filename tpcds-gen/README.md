Mapreduce TPC-DS Generator
==========================

This simplifies creating tpc-ds data-sets on large scales on a hadoop cluster.

To get set up, you need to run

	$ make 

this will download the TPC-DS dsgen program, compile it and use maven to build the MR app wrapped around it.

To generate the data-sets, you need to run (say, for scale = 200, parallelism = 100)

	$ hadoop  jar target/tpcds-gen-1.0-SNAPSHOT.jar   -d /tmp/store_sales/200/ -p 100 -s 200 

This uses the existing parallelism in the driver.c of TPC-DS without modification and uses it to run the command on multiple machines instead of running in local fork mode.

The command generates multiple files for each map task, resulting in each table having its own subdirectory.

Assumptions made are that all machines in the cluster are OS/arch/lib identical.
