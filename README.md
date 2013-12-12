hive-testbench
==============

A testbench for experimenting with Apache Hive at any data scale.

Overview
========

The hive-testbench is a data generator and set of queries that lets you experiment with Apache Hive at scale. The testbench allows you to experience base Hive performance on large datasets, and gives an easy way to see the impact of Hive tuning parameters and advanced settings.

Prerequisites
=============

You will need:
* A Linux-based HDP cluster (or Sandbox).
* Between 15 minutes and 6 hours to generate data (depending on the Scale Factor you choose and available hardware).

Install and Setup
=================

All of these steps should be carried out on your Hadoop cluster.

- Optional: Install a Tez capable version of Hive.

  If you want to compare and contrast Hive on Map/Reduce versus Hive on Tez, install a version of Hive that works with Tez. For now that means installing the [Stinger Phase 3 Preview](http://www.hortonworks.com). Hive 13 and beyond, when they are released, will include Tez support by default.

- Step 1: Prepare your environment.

  Before you begin ensure ```gcc``` is installed and available on your system path. If you system does not have it, install it using yum or apt-get.

- Step 2: Compile and package the data generator.

  ```./build.sh``` downloads, compiles and packages the data generator.

- Step 3: Decide how much data you want to generate.

  You need to decide on a "Scale Factor" which represents how much data you will generate. Scale Factor roughly translates to gigabytes, so a Scale Factor of 100 is about 100 gigabytes. One terabyte is Scale Factor 1000. Decide how much data you want and keep it in mind for the next step. If you have a cluster of 4-10 nodes or just want to experiment at a smaller scale, scale 200 (200GB) of data is a good starting point. If you have a large cluster, you may want to choose Scale 1000 (1TB) or more.

- Step 4: Generate and load the data.

  The ```tpcds-setup.sh``` script generates and loads data for you. General usage is ```tpcds-setup.sh scale [directory] [mode]```. Only the scale is mandatory. The directory argument causes data to be generated in a specific location. Mode can be partitioned or unpartitioned. Partitioned causes data to be partitioned by day. Unpartitioned creates one flat schema and is faster to generate.

  - Option 1: Generate data on a Hadoop cluster.

    Use this approach if you want to try Hive out at scale. This approach assumes you have multiple physical Hadoop nodes with plenty of RAM. All tables will be created and large tables will be partitioned by date and bucketed which improves performance among queries that take advantage of partition pruning or SMB joins.

    Example: ```./tpcds-setup.sh 200```

  - Option 2: Generate data on a Sandbox.

    Use this approach if you want to try Hive or Hive/Tez in a Sandbox environment. This approach creates an unpartitioned schema by default, which is faster to generate. This option is appropriate for smaller data scales, say 20GB or smaller.

    Example: ```./tpcds-setup-sandbox.sh 10```

- Step 5: Run queries.

  More than 50 sample TPC-DS queries are included for you to try out. You can use ```hive```, ```beeline``` or the SQL tool of your choice.

  Example:

  	```
  	cd sample-queries
  	hive
  	hive> use tpcds_bin_partitioned_orc_200
  	hive> source query12.sql
  	```

  Note that the database is named based on the Data Scale chosen in step 3. At Data Scale 200, your database will be named tpcds_bin_partitioned_orc_200. At Data Scale 50 it would be named tpcds_bin_partitioned_orc_50. You can always ```show databases``` to get a list of available databases.

Feedback
========

If you have questions, comments or problems, visit the [Hortonworks Hive forum](http://hortonworks.com/community/forums/forum/hive/).

If you have improvements, pull requests are accepted.
