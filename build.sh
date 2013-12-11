#!/bin/sh

# Check for all the stuff I need to function.
for f in gcc flex bison mvn; do
	which $f > /dev/null 2>&1 || ( echo "Required program $f is missing. Please install it and try again." ; exit 1 )
done

(cd tpcds-gen; make)
