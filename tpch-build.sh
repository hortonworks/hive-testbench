#!/bin/sh

# Check for all the stuff I need to function.
for f in gcc; do
	which $f > /dev/null 2>&1
	if [ $? -ne 0 ]; then
		echo "Required program $f is missing. Please install it and try again."
		exit 1
	fi
done

# Check if Maven is installed and install it if not.
which mvn > /dev/null 2>&1
if [ $? -ne 0 ]; then
	echo "Maven not found, automatically installing it."
	curl -O http://www.us.apache.org/dist/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz 2> /dev/null
	if [ $? -ne 0 ]; then
		echo "Failed to download Maven, check Internet connectivity and try again."
		exit 1
	fi
	tar -zxf apache-maven-3.0.5-bin.tar.gz > /dev/null
	CWD=$(pwd)
	export MAVEN_HOME="$CWD/apache-maven-3.0.5"
	export PATH=$PATH:$MAVEN_HOME/bin
fi

echo "Building TPC-H Data Generator"
(cd tpch-gen; make)
echo "TPC-H Data Generator built, you can now use tpch-setup.sh to generate data."
