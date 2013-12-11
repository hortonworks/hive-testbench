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

  If you want to compare and contrast Hive on Map/Reduce versus Hive on Tez, install a version of Hive that works with Tez. For now that means installing the [Stinger Phase 3 Beta](http://www.hortonworks.com). Hive 13 and beyond, when they are released, will include Tez support by default.

- Step 1: Prepare your environment.

  Before you begin, ```gcc```, ```flex```, ```bison``` and maven (```mvn```)must be in your system path. This is needed to compile the data generation program and package it for running inside Hadoop. These only need to be installed on one node of your Hadoop cluster.

  On Ubuntu systems you can install all these via ```sudo apt-get install gcc flex bison maven```.
  On RHEL / CentOS, most of these are availabile, start with ```sudo yum install gcc flex bison```. Maven must be installed manually.

- Step 2: Compile and package the data generator.

  ```./build.sh``` builds the data generator. Missing dependencies from step 1 will be detected and reported.

- Step 2: Create a working directory in HDFS.

  ```hadoop fs -mkdir /tmp/tpcds-staging```
  creates a staging directory. This directory can be removed later to free up space.

- Step 3: Decide how much data you want to generate.

  You need to decide on a "Scale Factor" which represents how much data you will generate. Scale Factor roughly translates to gigabytes, so a Scale Factor of 100 is about 100 gigabytes. One terabyte is Scale Factor 1000. Decide how much data you want and keep it in mind for the next step. If you have a cluster of 4-10 nodes or just want to experiment at a smaller scale, scale 200 (200GB) of data is a good starting point. If you have a large cluster, you may want to choose Scale 1000 (1TB) or more.

- Step 4: Generate and load the data.

  - Option 1: Generate data on a Hadoop cluster.

    Use this approach if you want to try Hive out at scale. This approach assumes you have multiple physical Hadoop nodes with plenty of RAM. All tables will be created and large tables will be partitioned by date and bucketed which improves performance among queries that take advantage of partition pruning or SMB joins.

    Example: ```./tpcds-setup.sh 200 /tmp/tpcds-staging```

  - Option 2: Generate data on a Sandbox.

    Use this approach if you want to try Hive or Hive/Tez out in a Sandbox environment. This is for experimentation only and you should not generate too much data if you choose this route, 20 GB or less would be appropriate. This approach does not partition data.

    Example: ```./tpcds-setup-sandbox.sh 10 /tmp/tpcds-staging```

- Step 5: Run queries.

  More than 50 sample TPC-DS queries are included for you to try out. You can use ```hive```, ```beeline``` or the SQL tool of your choice.

  Example:

  	```cd sample-queries
  	hive
  	use tpcds_bin_partitioned_orc_200
  	source query12.sql```

  Note that the database is named based on the Data Scale chosen in step 3. At Data Scale 200, your database will be named tpcds_bin_partitioned_orc_200. At Data Scale 50 it would be named tpcds_bin_partitioned_orc_50.

Feedback
========

If you have questions, comments or problems, visit the [Hortonworks Hive forum](http://hortonworks.com/community/forums/forum/hive/).

If you have improvements, pull requests are accepted.
