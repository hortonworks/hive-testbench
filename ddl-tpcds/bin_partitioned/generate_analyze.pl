use Text::Wrap;

use DateTime;
use DateTime::Format::Strptime;

$Text::Wrap::columns = 72;

print "-- Use filesystem to track stats.\n";
print "set hive.stats.dbclass=fs;\n";
print "-- Many tables have some missing partitions, deal with this by ignoring errors.\n";
print "set hive.cli.errors.ignore=true;\n\n";

%partitions = (
	catalog_returns => "cr_returned_date",
	catalog_sales => "cs_sold_date",
	inventory => "inv_date",
	store_returns => "sr_returned_date",
	store_sales => "ss_sold_date",
	web_returns => "wr_returned_date",
	web_sales => "ws_sold_date",
);

open(TEMP, $ARGV[0]);
$old = $/;
$/ = undef;
$x = <TEMP>;
$x =~ m|l table (\S+)|;
$table = $1;
$table =~ s/\(//g;

if ($partitions{$table}) {
	$partition = " partition(" . $partitions{$table} . ")";
}

open(TEMP, $ARGV[0]);
$/ = $old;
while ($_ = <TEMP>) {
	if ($_ =~ m|^[ ,]{4,6}(\S+)|) {
		push(@stuff, "$1");
	}
}
$columns = join(', ', @stuff);
@stuff = split('\s', $columns);
print "ANALYZE TABLE $table$partition COMPUTE STATISTICS;\n";

$date = "1998-01-01";
my $strp = DateTime::Format::Strptime->new(
	pattern => '%Y-%m-%d'
);
$dt = $strp->parse_datetime($date);

if ($partitions{$table}) {
	$year = "1998";
	while ($year < 2003) {
		$partitionv = "'" . $dt->strftime("%Y-%m-%d") . "'";
		$partition = " partition(" . $partitions{$table} . "=$partitionv)";
		print "!echo Analyzing $table $partitionv;\n";
		print "ANALYZE TABLE $table$partition COMPUTE STATISTICS FOR COLUMNS \n";
		print wrap("\t", "\t", @stuff);
		print ";\n\n";
		$dt->add(days => 1);
		$year = $dt->strftime("%Y");
	}
} else {
	print "ANALYZE TABLE $table COMPUTE STATISTICS FOR COLUMNS \n";
	print wrap("\t", "\t", @stuff);
	print ";\n\n";
}
