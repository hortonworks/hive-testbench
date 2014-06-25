#!/usr/bin/perl

use strict;
use warnings;
use File::Basename;

# PROTOTYPES
sub dieWithUsage(;$);

# GLOBALS
my $SCRIPT_NAME = basename( __FILE__ );
my $SCRIPT_PATH = dirname( __FILE__ );

# MAIN
dieWithUsage("one or more parameters not defined") unless @ARGV == 1;
my $suite = shift;
dieWithUsage("suite name required") unless $suite eq "tpcds" or $suite eq "tpch";

chdir $SCRIPT_PATH;
if( $suite eq 'tpcds' ) {
	chdir "sample-queries-tpcds";
} else {
	chdir 'sample-queries-tpch';
} # end if
my @queries = glob '*.sql';

print "filename,status,time,rows\n";
for my $query ( @queries ) {
	my $logname = "$query.log";
	my $cmd="echo 'use tpcds_bin_partitioned_orc_2; source $query;' | hive -i testbench.settings 2>&1  | tee $query.log";
	#print $cmd ; exit;
	
	my @hiveoutput=`$cmd`;

	foreach my $line ( @hiveoutput ) {
		if( $line =~ /Time taken:\s+([\d\.]+)\s+seconds,\s+Fetched:\s+(\d+)\s+row/ ) {
			print "$query,success,$1,$2\n"; 
		} elsif( 
			$line =~ /FAILED: Execution Error/
			# || /Task failed!/ 
			) {
			print "$query,failed\n"; 
		} # end if
	} # end while
} # end for


sub dieWithUsage(;$) {
	my $err = shift || '';
	if( $err ne '' ) {
		chomp $err;
		$err = "ERROR: $err\n\n";
	} # end if

	print STDERR <<USAGE;
${err}Usage:
	perl ${SCRIPT_NAME} [tpcds|tpch]

Description:
	This script runs the sample queries and outputs a CSV file of the time it took each query to run.  Also, all hive output is kept as a log file named 'queryXX.sql.log' for each query file of the form 'queryXX.sql'.
USAGE
	exit 1;
}

