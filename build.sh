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
	echo "Maven not found, installing it."
	wget -c http://www.us.apache.org/dist/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
	tar -zxf apache-maven-3.0.5-bin.tar.gz
	CWD=$(pwd)
	export MAVEN_HOME="$CWD/apache-maven-3.0.5"
	export PATH=$PATH:$MAVEN_HOME/bin
fi

echo "Building Data Generator"
(cd tpcds-gen; make)
