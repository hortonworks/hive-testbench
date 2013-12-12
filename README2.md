Overview

Prerequisites
You will need:
* A Linux-based HDP cluster (or Sandbox).
* Between 15 minutes and 6 hours to generate data (depending on the data scale you choose and available hardware).

Step 1: Install Stinger Phase 3 Beta.
XXX

Step 1: Prepare your environment.
Before you begin, you will need to install flex, bison and maven on your system. This is needed to compile the data generation program. These only need to be installed on one node.

Step 2: Create a working directory.
Before generating data

Step 3: Decide how much data you want to generate.
If you have a cluster of 4-10 nodes or just want to experiment at a smaller scale, scale 200 (200GB) of data is a good starting point. If you have a large cluster, you may want to choose Scale 1000 (1TB) or more.

Step 3: Generate and load the data.

Step 3a: Generate data on a Hadoop cluster.
Use this approach if you want to try Hive/Tez out at scale. This approach assumes you have multiple physical Hadoop nodes with plenty of RAM. All tables will be created and large tables will be partitioned by date and bucketed which improves performance among queries that take advantage of partition pruning or SMB joins.

Step 3b: Generate data on a Sandbox.
Use this approach if you want to try Tez out in a Sandbox environment. This is for experimentation only and you should not generate a large amount of data if you choose this route. This approach does not partition data.

Step 4: Run queries.
More than 50 sample TPC-DS queries are included for you to try out.

Feedback
