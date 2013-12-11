#!/bin/sh

# Check for all the stuff I need to function.
for f in gcc mvn; do
	which $f > /dev/null 2>&1
	if [ $? -ne 0 ]; then
		echo "Required program $f is missing. Please install it and try again."
		exit 1
	fi
done

echo "Building Data Generator"
(cd tpcds-gen; make)
