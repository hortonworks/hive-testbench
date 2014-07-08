

#!/usr/bin/bash
databaseName="$1"
filename="$2"
runName="$3"

DEFAULT=default  
samplingrate=1


startDstatsCollection () {
   if [ -z "$1" ]                           # Is parameter #1 zero length?
   then
     echo "-Parameter #1 run path is zero length.-"  # Or no parameter passed.
     return 0
   fi

   if [ -z "$2" ]                           # Is parameter #1 zero length?
   then
     echo "-Parameter #2 collection name is zero length.-"  # Or no parameter passed.
     return 0
   fi

   dstatoufileextension="csv"
   dstatoutdir=${1-$DEFAULT}                   	

   collectionname=${2-$DEFAULT}                   			
   collectioncsvfile="$collectionname.csv"

while read -r machinename
do                                            
	echo "Start dstat on $machinename"
	collectioncsvfile="$machinename.$collectionname.csv"
	outfile="$dstatoutdir/$collectioncsvfile"
	sudo ssh $machinename  "mkdir -p \"$dstatoutdir\" ;" < /dev/null 
	sudo ssh $machinename  "dstat -t -a --output $outfile $samplingrate > /dev/null & " < /dev/null 

done < dn.txt
}

stopDstatsCollection () {

	while read -r machinename
	do                                            
		echo $machinename
		echo "Stop dstat on $machinename"
        #ssh -i $HOME/cloud.key cloud-user@$machinename "nohup ps aux | grep dstat | awk '{print \$2}' | xargs kill > /dev/null 2>&1 & " < /dev/null  
        #ssh -i $HOME/cloud.key cloud-user@$machinename "ps aux | grep dstat | awk '{print \$2}' | xargs kill > /dev/null & " & < /dev/null  
	sudo ssh $machinename "ps aux | grep dstat | awk '{print \$2}' | xargs kill > /dev/null & " & < /dev/null
        #ssh -n -o BatchMode=yes $HOME/cloud.key cloud-user@$machinename "/home/cloud-user/impala-tpcds-kit/queries/stopdstat.sh"   2>&1 &
        #ssh -i $HOME/cloud.key cloud-user@$machinename 'bash -s' < "/home/cloud-user/impala-tpcds-kit/queries/stopdstat.sh"   < /dev/null 
	done < dn.txt
}

consLogFile () {

  if [ -z "$1" ]                           
   then
     echo "-Parameter #1 run path is zero length.-"  
     return 0
   fi

   headmachine=$(cat dn.txt | head -n 1)

   sourcedir=${1-$DEFAULT}                   	
   	while read -r machinename
	do                                            
		 if [ "$headmachine" = "$machinename" ]
		 then 
			continue
		 fi	
	
		echo "Copy from $machinename $sourcedir"
		sudo scp -rp $machinename:$sourcedir $baseoutdir
	done < dn.txt
}

summarizedstats () {

   if [ -z "$1" ]                           # Is parameter #1 zero length?
   then
     echo "-Parameter #1 run path is zero length.-"  # Or no parameter passed.
     return 0
   fi

   if [ -z "$2" ]                           # Is parameter #1 zero length?
   then
     echo "-Parameter #2 collection name is zero length.-"  # Or no parameter passed.
     return 0
   fi
   
   dstatfilesdir=${1-$DEFAULT}                   	
   dstatsummaryfile=${2-$DEFAULT}          
   echo $dstatfilesdir
   echo $dstatsummaryfile

   echo "machineName,query,executionNumber,elapsedTimeSecs,avgCpuUser,avgCpuSys,avgDiskReadBytes/sec,avgDiskWriteBytes/sec,avgNetworkReadBytes/sec,avgNetworkWriteBytes/sec,totalCpuUser,totalCpuSys,totalDiskReadBytes,totalDiskWriteBytes,totalNetworkReadBytes,totalNetworkWriteBytes,filename" > $dstatsummaryfile   

   cd $dstatfilesdir
   
	for filename in `ls *csv`
		do

		echo "Summarizing on $filename..."

		# Some book keeping
		parsecsvdata=0
		sampleCount=0

		# Avg counts
		avgCpuUser=0
		avgCpusys=0
		avgDiskRead=0
		avgDiskWrite=0
		avgNetworkRead=0
		avgNetworkWrite=0

		# total counts	
		totCpuUser=0
		totCpusys=0
		totdiskRead=0
		totdiskWrite=0
		totnetworkRead=0
		totnetworkWrite=0

		# Set "," as the field separator using $IFS
		# and read line by line using while read combo 
		while IFS=',' read -r c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12
		do
	 
		 if [ "$c1" = "\"date/time\"" ]
		 then 
			parsecsvdata=1
			continue
		 fi	
	 
		 if [ $parsecsvdata -eq 1 ]
		 then
			let sampleCount=$sampleCount+1
			totCpuUser=$(echo "scale=4; $totCpuUser+$c2" | bc)	
			totCpusys=$(echo "scale=4; $totCpusys+$c3" | bc)	
			totdiskRead=$(echo "scale=4; $totdiskRead+$c8" | bc)	
			totdiskWrite=$(echo "scale=4; $totdiskWrite+$c9" | bc)	
			totnetworkRead=$(echo "scale=4; $totnetworkRead+$c10" | bc)	
			totnetworkWrite=$(echo "scale=4; $totnetworkWrite+$c11" | bc)	
			#echo "$totCpuUser  $totCpusys $totdiskRead $totdiskWrite $totnetworkRead $totnetworkWrite  $c1 $c2 $c3 $c4 $c5 $c6 $c7"
		 fi	
		done < "$filename"
	
		# Get the averages
			avgCpuUser=$(echo "scale=4; $totCpuUser/$sampleCount" | bc)	
			avgCpusys=$(echo "scale=4; $totCpusys/$sampleCount" | bc)	
			avgDiskRead=$(echo "scale=4; $totdiskRead/$sampleCount" | bc)	
			avgDiskWrite=$(echo "scale=4; $totdiskWrite/$sampleCount" | bc)	
			avgNetworkRead=$(echo "scale=4; $totnetworkRead/$sampleCount" | bc)	
			avgNetworkWrite=$(echo "scale=4; $totnetworkWrite/$sampleCount" | bc)	
	
		# Parse the test metadata from the file name
		IFS=. read -a testinfo <<<"$filename"
		machineName="${testinfo[0]}"
		query="${testinfo[1]}"
		executionNumber="${testinfo[3]}"
	
		echo "$machineName,$query,$executionNumber,$sampleCount,$avgCpuUser,$avgCpusys,$avgDiskRead,$avgDiskWrite,$avgNetworkRead,$avgNetworkWrite,$totCpuUser,$totCpusys,$totdiskRead,$totdiskWrite,$totnetworkRead,$totnetworkWrite,$filename" >> $dstatsummaryfile
done
}

loopCount="4"
timeStamp="$(date "+%s-%d-%H-%M-%S")"
baseoutdir="$runName/$databaseName"
outDir="$baseoutdir/$timeStamp"
explainPlans="$outDir/explainPlans"
queryOutPut="$outDir/queryOutPut"
profileOutPut="$outDir/queryProfile"
tempQueries="$outDir/tempQueries"
masterLogFile="$outDir/masterlog.txt"
executionTimeFile="$outDir/summary.csv"
currentDir=$(pwd)
dstatCountersDir="$currentDir/$outDir/dstats"
resourcesummaryfile="$currentDir/$outDir/resourceSummary.csv"


mkdir -p "$outDir"
mkdir -p "$tempQueries"
mkdir -p "$queryOutPut"
mkdir -p "$explainPlans"
mkdir -p "$profileOutPut"
mkdir -p "$dstatCountersDir"

echo "runName,databaseName,queryName,executionNumber,responseTime,rows(s),jobID,executionTime" > $executionTimeFile

explainString="explain "
exitString="exit;"

while read -r line
do
    name=$line
    queryName=$line
    queryFileName="$tempQueries/$queryName.explain.txt"
    outFileName="$explainPlans/$queryName.explain.out"

    echo "$explainString " | cat - $line  > "$queryFileName"
    echo "$exitString" >> "$queryFileName"
	
	echo "$(date "+%m-%d-%Y %T") : Starting $queryFileName" 
    echo "$(date "+%m-%d-%Y %T") : Starting $queryFileName" >> $masterLogFile
	START=$(($(date +%s%N)/1000000))
    
    hive --database $databaseName -i "$queryFileName" > "$outFileName"  2>&1
    #impala-shell -i impala2 -V -B -d $databaseName -f "$queryFileName" > "$outFileName"  2>&1
    
    END=$(($(date +%s%N)/1000000))
    ET=$((END-START))
    
    echo "$runName,$databaseName,$queryName.explain,explain,$ET" >> $executionTimeFile
	echo "$(date "+%m-%d-%Y %T") : End $outDir/$line.explain.txt" 
    echo "$(date "+%m-%d-%Y %T") : End $outDir/$line.explain.txt" >> $masterLogFile
    
    for i in $(seq 1 1 $loopCount)
    do
  
       queryFileName="$tempQueries/$queryName.$i.txt"
       outFileName="$queryOutPut/$queryName.$i.out"
       outProfileName="$profileOutPut/$queryName.$i.out"

	   cat  $line  > "$queryFileName"
       echo "$exitString" >> "$queryFileName"

	   # Run queries without profiling
	   echo "$(date "+%m-%d-%Y %T") : Starting $queryFileName" 
       echo "$(date "+%m-%d-%Y %T") : Starting $queryName.$i.txt" >> $masterLogFile

        # start data trace
		startDstatsCollection $dstatCountersDir "$queryName.$i"

       START=$(($(date +%s%N)/1000000))

	   hive --database $databaseName -e "`cat $queryFileName`" > "$outFileName"  2>&1
	   #impala-shell -i impala2 -V -B -d $databaseName -f "$queryFileName" > "$outFileName"  2>&1

       END=$(($(date +%s%N)/1000000))
       ET=$((END-START))

		stopDstatsCollection 

       responsetime=$(cat $outFileName | grep "Time taken:" | grep "seconds" | awk '{print $3}')
       returnedrowcount=$(cat $outFileName | grep "Time taken:" | grep "row(s)" | awk '{print $63}')
       jobid=$(cat $outFileName | grep "Query ID" | awk '{print $4}')


       echo "$queryName.$i completed $ET msec" 
       echo "$runName,$databaseName,$queryName,$i,$responsetime,$returnedrowcount,$jobid,$ET" >> $executionTimeFile
       echo "$(date "+%m-%d-%Y %T") : End $queryName.$i.txt" >> $masterLogFile
       

    done

done < "$filename"


# Copy log files from all machines

consLogFile $currentDir/$outDir

summarizedstats $dstatCountersDir $resourcesummaryfile

