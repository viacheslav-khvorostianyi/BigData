# Homework 3

### Task1/Demo – the simplest wordcount

```bash
slavafh@vkhvorostianyi-2025-12-13-m:~$ yarn jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar wordcount README.txt output-wordcount-mr
2026-01-25 15:31:15,011 INFO client.RMProxy: Connecting to ResourceManager at vkhvorostianyi-2025-12-13-m/10.128.0.22:8032
2026-01-25 15:31:15,238 INFO client.AHSProxy: Connecting to Application History server at vkhvorostianyi-2025-12-13-m/10.128.0.22:10200
2026-01-25 15:31:15,453 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/slavafh/.staging/job_1769353978274_0004
2026-01-25 15:31:15,738 WARN concurrent.ExecutorHelper: Thread (Thread[GetFileInfo #0,5,main]) interrupted: 
java.lang.InterruptedException
        at com.google.common.util.concurrent.AbstractFuture.get(AbstractFuture.java:510)
        at com.google.common.util.concurrent.FluentFuture$TrustedFuture.get(FluentFuture.java:88)
        at org.apache.hadoop.util.concurrent.ExecutorHelper.logThrowableFromAfterExecute(ExecutorHelper.java:48)
        at org.apache.hadoop.util.concurrent.HadoopThreadPoolExecutor.afterExecute(HadoopThreadPoolExecutor.java:90)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1157)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:750)
2026-01-25 15:31:15,742 WARN concurrent.ExecutorHelper: Thread (Thread[GetFileInfo #1,5,main]) interrupted: 
java.lang.InterruptedException
        at com.google.common.util.concurrent.AbstractFuture.get(AbstractFuture.java:510)
        at com.google.common.util.concurrent.FluentFuture$TrustedFuture.get(FluentFuture.java:88)
        at org.apache.hadoop.util.concurrent.ExecutorHelper.logThrowableFromAfterExecute(ExecutorHelper.java:48)
        at org.apache.hadoop.util.concurrent.HadoopThreadPoolExecutor.afterExecute(HadoopThreadPoolExecutor.java:90)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1157)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:750)
2026-01-25 15:31:15,742 INFO input.FileInputFormat: Total input files to process : 1
2026-01-25 15:31:15,861 INFO mapreduce.JobSubmitter: number of splits:1
2026-01-25 15:31:16,154 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1769353978274_0004
2026-01-25 15:31:16,156 INFO mapreduce.JobSubmitter: Executing with tokens: []
2026-01-25 15:31:16,397 INFO conf.Configuration: resource-types.xml not found
2026-01-25 15:31:16,398 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2026-01-25 15:31:16,892 INFO impl.YarnClientImpl: Submitted application application_1769353978274_0004
2026-01-25 15:31:16,976 INFO mapreduce.Job: The url to track the job: http://vkhvorostianyi-2025-12-13-m:8088/proxy/application_1769353978274_0004/
2026-01-25 15:31:16,977 INFO mapreduce.Job: Running job: job_1769353978274_0004
2026-01-25 15:31:29,140 INFO mapreduce.Job: Job job_1769353978274_0004 running in uber mode : false
2026-01-25 15:31:29,142 INFO mapreduce.Job:  map 0% reduce 0%
2026-01-25 15:31:37,242 INFO mapreduce.Job:  map 100% reduce 0%
2026-01-25 15:31:44,294 INFO mapreduce.Job:  map 100% reduce 14%
2026-01-25 15:31:45,303 INFO mapreduce.Job:  map 100% reduce 29%
2026-01-25 15:31:46,311 INFO mapreduce.Job:  map 100% reduce 57%
2026-01-25 15:31:47,319 INFO mapreduce.Job:  map 100% reduce 71%
2026-01-25 15:31:48,325 INFO mapreduce.Job:  map 100% reduce 86%
2026-01-25 15:31:49,333 INFO mapreduce.Job:  map 100% reduce 100%
2026-01-25 15:31:50,353 INFO mapreduce.Job: Job job_1769353978274_0004 completed successfully
2026-01-25 15:31:50,449 INFO mapreduce.Job: Counters: 55
        File System Counters
                FILE: Number of bytes read=1588
                FILE: Number of bytes written=1961591
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=1130
                HDFS: Number of bytes written=1082
                HDFS: Number of read operations=38
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=21
                HDFS: Number of bytes read erasure-coded=0
        Job Counters 
                Killed reduce tasks=1
                Launched map tasks=1
                Launched reduce tasks=7
                Data-local map tasks=1
                Total time spent by all maps in occupied slots (ms)=18186206
                Total time spent by all reduces in occupied slots (ms)=140610422
                Total time spent by all map tasks (ms)=5371
                Total time spent by all reduce tasks (ms)=41527
                Total vcore-milliseconds taken by all map tasks=5371
                Total vcore-milliseconds taken by all reduce tasks=41527
                Total megabyte-milliseconds taken by all map tasks=18186206
                Total megabyte-milliseconds taken by all reduce tasks=140610422
        Map-Reduce Framework
                Map input records=34
                Map output records=148
                Map output bytes=1581
                Map output materialized bytes=1588
                Input split bytes=123
                Combine input records=148
                Combine output records=116
                Reduce input groups=116
                Reduce shuffle bytes=1588
                Reduce input records=116
                Reduce output records=116
                Spilled Records=232
                Shuffled Maps =7
                Failed Shuffles=0
                Merged Map outputs=7
                GC time elapsed (ms)=1141
                CPU time spent (ms)=8980
                Physical memory (bytes) snapshot=2606624768
                Virtual memory (bytes) snapshot=37107920896
                Total committed heap usage (bytes)=2550136832
                Peak Map Physical memory (bytes)=525754368
                Peak Map Virtual memory (bytes)=4631597056
                Peak Reduce Physical memory (bytes)=339902464
                Peak Reduce Virtual memory (bytes)=4655824896
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters 
                Bytes Read=1007
        File Output Format Counters 
                Bytes Written=1082
slavafh@vkhvorostianyi-2025-12-13-m:~$ hdfs dfs -cat output-wordcount-mr/*
Dependencies    1
Explain 1
Getting 1
Installation    1
Project 1
and     4
any     2
before  1
cd      1
chosen  1
concise,        1
development.    1
faced   1
its     1
machine.        1
prerequisites,  1
solves, 1
the     5
versions        1
<!--    1
If      1
Instructions    1
Navigate        1
badges  1
clone   1
dependencies    1
download        1
get     1
guide   1
how     2
https://github.com      1
one     1
or      4
status, 1
##      2
(v14+)  1
Description     1
Started 1
 1
a       2
e.g.,   1
etc.    1
install 2
license,        1
offers. 1
repository      1
technologies    1
their   1
users   1
#       4
*       2
Example:        2
Install 1
Node.js 2
applicable,     1
can     2
copy    1
core    1
features        1
of      2
project.        2
purpose 1
required        1
system  1
up      1
your    3
3.8+    1
Add     1
List    1
Python  1
Step-by-step    1
Title   1
about   1
build   1
challenges      1
directory       1
in-depth        1
into    1
libraries,      1
on      3
specific        2
summary 1
two-sentence    1
utility.        1
A       1
during  1
operating       1
paragraph       1
projects       1
project)        1
were    1
why     1
you     1
your-project-name       1
###     2
(example        1
-->     1
An      1
Clone   1
for     1
functionality,  1
git     1
here,   1
installation.   1
it      2
local   1
mention 1
npm     1
optional        1
problem 1
project 2
running 1
to      1
two     1
unique  1
version,        1
```

### Task2/Demo – TeraSort MapReduce Benchmark

TeraGen – generating input data
```bash
slavafh@vkhvorostianyi-2025-12-13-m:~$ yarn jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar \
> teragen -Dmapreduce.job.maps=4 25000000 terainput
2026-01-25 15:38:51,803 INFO client.RMProxy: Connecting to ResourceManager at vkhvorostianyi-2025-12-13-m/10.128.0.22:8032
2026-01-25 15:38:52,039 INFO client.AHSProxy: Connecting to Application History server at vkhvorostianyi-2025-12-13-m/10.128.0.22:10200
2026-01-25 15:38:52,263 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/slavafh/.staging/job_1769353978274_0005
2026-01-25 15:38:52,505 INFO terasort.TeraGen: Generating 25000000 using 4
2026-01-25 15:38:52,580 INFO mapreduce.JobSubmitter: number of splits:4
2026-01-25 15:38:52,858 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1769353978274_0005
2026-01-25 15:38:52,860 INFO mapreduce.JobSubmitter: Executing with tokens: []
2026-01-25 15:38:53,071 INFO conf.Configuration: resource-types.xml not found
2026-01-25 15:38:53,072 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2026-01-25 15:38:53,374 INFO impl.YarnClientImpl: Submitted application application_1769353978274_0005
2026-01-25 15:38:53,415 INFO mapreduce.Job: The url to track the job: http://vkhvorostianyi-2025-12-13-m:8088/proxy/application_1769353978274_0005/
2026-01-25 15:38:53,415 INFO mapreduce.Job: Running job: job_1769353978274_0005
2026-01-25 15:39:01,532 INFO mapreduce.Job: Job job_1769353978274_0005 running in uber mode : false
2026-01-25 15:39:01,534 INFO mapreduce.Job:  map 0% reduce 0%
2026-01-25 15:39:19,728 INFO mapreduce.Job:  map 45% reduce 0%
2026-01-25 15:39:20,734 INFO mapreduce.Job:  map 88% reduce 0%
2026-01-25 15:39:24,774 INFO mapreduce.Job:  map 94% reduce 0%
2026-01-25 15:39:25,781 INFO mapreduce.Job:  map 100% reduce 0%
2026-01-25 15:39:26,801 INFO mapreduce.Job: Job job_1769353978274_0005 completed successfully
2026-01-25 15:39:26,897 INFO mapreduce.Job: Counters: 34
        File System Counters
                FILE: Number of bytes read=0
                FILE: Number of bytes written=977484
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=338
                HDFS: Number of bytes written=2500000000
                HDFS: Number of read operations=24
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=12
                HDFS: Number of bytes read erasure-coded=0
        Job Counters 
                Launched map tasks=4
                Other local map tasks=4
                Total time spent by all maps in occupied slots (ms)=281684726
                Total time spent by all reduces in occupied slots (ms)=0
                Total time spent by all map tasks (ms)=83191
                Total vcore-milliseconds taken by all map tasks=83191
                Total megabyte-milliseconds taken by all map tasks=281684726
        Map-Reduce Framework
                Map input records=25000000
                Map output records=25000000
                Input split bytes=338
                Spilled Records=0
                Failed Shuffles=0
                Merged Map outputs=0
                GC time elapsed (ms)=839
                CPU time spent (ms)=69740
                Physical memory (bytes) snapshot=1900830720
                Virtual memory (bytes) snapshot=18535972864
                Total committed heap usage (bytes)=1764753408
                Peak Map Physical memory (bytes)=556744704
                Peak Map Virtual memory (bytes)=4638420992
        org.apache.hadoop.examples.terasort.TeraGen$Counters
                CHECKSUM=53696352189416325
        File Input Format Counters 
                Bytes Read=0
        File Output Format Counters 
                Bytes Written=2500000000
slavafh@vkhvorostianyi-2025-12-13-m:~$ 
```
TeraSort – sorting generated data

```bash
slavafh@vkhvorostianyi-2025-12-13-m:~$ yarn jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar terasort \
> -Dmapreduce.job.reduces=1 terainput teraoutput
2026-01-25 15:43:32,413 INFO terasort.TeraSort: starting
2026-01-25 15:43:34,112 INFO input.FileInputFormat: Total input files to process : 4
Spent 213ms computing base-splits.
Spent 3ms computing TeraScheduler splits.
Computing input splits took 216ms
Sampling 10 splits of 20
Making 1 from 100000 sampled records
Computing parititions took 516ms
Spent 735ms computing partitions.
2026-01-25 15:43:34,909 INFO client.RMProxy: Connecting to ResourceManager at vkhvorostianyi-2025-12-13-m/10.128.0.22:8032
2026-01-25 15:43:35,096 INFO client.AHSProxy: Connecting to Application History server at vkhvorostianyi-2025-12-13-m/10.128.0.22:10200
2026-01-25 15:43:35,211 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/slavafh/.staging/job_1769353978274_0006
2026-01-25 15:43:35,415 INFO mapreduce.JobSubmitter: number of splits:20
2026-01-25 15:43:35,659 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1769353978274_0006
2026-01-25 15:43:35,661 INFO mapreduce.JobSubmitter: Executing with tokens: []
2026-01-25 15:43:35,883 INFO conf.Configuration: resource-types.xml not found
2026-01-25 15:43:35,883 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2026-01-25 15:43:35,978 INFO impl.YarnClientImpl: Submitted application application_1769353978274_0006
2026-01-25 15:43:36,063 INFO mapreduce.Job: The url to track the job: http://vkhvorostianyi-2025-12-13-m:8088/proxy/application_1769353978274_0006/
2026-01-25 15:43:36,064 INFO mapreduce.Job: Running job: job_1769353978274_0006
2026-01-25 15:43:44,218 INFO mapreduce.Job: Job job_1769353978274_0006 running in uber mode : false
2026-01-25 15:43:44,220 INFO mapreduce.Job:  map 0% reduce 0%
2026-01-25 15:44:00,379 INFO mapreduce.Job:  map 10% reduce 0%
2026-01-25 15:44:01,386 INFO mapreduce.Job:  map 15% reduce 0%
2026-01-25 15:44:05,424 INFO mapreduce.Job:  map 35% reduce 0%
2026-01-25 15:44:14,489 INFO mapreduce.Job:  map 45% reduce 0%
2026-01-25 15:44:15,497 INFO mapreduce.Job:  map 50% reduce 0%
2026-01-25 15:44:23,548 INFO mapreduce.Job:  map 60% reduce 0%
2026-01-25 15:44:24,555 INFO mapreduce.Job:  map 70% reduce 0%
2026-01-25 15:44:27,572 INFO mapreduce.Job:  map 75% reduce 0%
2026-01-25 15:44:28,578 INFO mapreduce.Job:  map 80% reduce 0%
2026-01-25 15:44:29,584 INFO mapreduce.Job:  map 85% reduce 0%
2026-01-25 15:44:44,699 INFO mapreduce.Job:  map 88% reduce 0%
2026-01-25 15:44:45,705 INFO mapreduce.Job:  map 95% reduce 0%
2026-01-25 15:44:50,751 INFO mapreduce.Job:  map 98% reduce 0%
2026-01-25 15:44:51,760 INFO mapreduce.Job:  map 100% reduce 0%
2026-01-25 15:45:10,889 INFO mapreduce.Job:  map 100% reduce 22%
2026-01-25 15:45:16,924 INFO mapreduce.Job:  map 100% reduce 33%
2026-01-25 15:45:28,991 INFO mapreduce.Job:  map 100% reduce 69%
2026-01-25 15:45:35,024 INFO mapreduce.Job:  map 100% reduce 77%
2026-01-25 15:45:41,057 INFO mapreduce.Job:  map 100% reduce 85%
2026-01-25 15:45:47,088 INFO mapreduce.Job:  map 100% reduce 93%
2026-01-25 15:45:53,121 INFO mapreduce.Job:  map 100% reduce 100%
2026-01-25 15:45:57,153 INFO mapreduce.Job: Job job_1769353978274_0006 completed successfully
2026-01-25 15:45:57,257 INFO mapreduce.Job: Counters: 55
        File System Counters
                FILE: Number of bytes read=2600000018
                FILE: Number of bytes written=5205161662
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=2500002700
                HDFS: Number of bytes written=2500000000
                HDFS: Number of read operations=65
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=3
                HDFS: Number of bytes read erasure-coded=0
        Job Counters 
                Killed map tasks=2
                Launched map tasks=22
                Launched reduce tasks=1
                Data-local map tasks=22
                Total time spent by all maps in occupied slots (ms)=1191330240
                Total time spent by all reduces in occupied slots (ms)=208445546
                Total time spent by all map tasks (ms)=351840
                Total time spent by all reduce tasks (ms)=61561
                Total vcore-milliseconds taken by all map tasks=351840
                Total vcore-milliseconds taken by all reduce tasks=61561
                Total megabyte-milliseconds taken by all map tasks=1191330240
                Total megabyte-milliseconds taken by all reduce tasks=208445546
        Map-Reduce Framework
                Map input records=25000000
                Map output records=25000000
                Map output bytes=2550000000
                Map output materialized bytes=2600000120
                Input split bytes=2700
                Combine input records=0
                Combine output records=0
                Reduce input groups=25000000
                Reduce shuffle bytes=2600000120
                Reduce input records=25000000
                Reduce output records=25000000
                Spilled Records=50000000
                Shuffled Maps =20
                Failed Shuffles=0
                Merged Map outputs=20
                GC time elapsed (ms)=4335
                CPU time spent (ms)=293190
                Physical memory (bytes) snapshot=13262557184
                Virtual memory (bytes) snapshot=97584553984
                Total committed heap usage (bytes)=11736186880
                Peak Map Physical memory (bytes)=677339136
                Peak Map Virtual memory (bytes)=4698353664
                Peak Reduce Physical memory (bytes)=2067963904
                Peak Reduce Virtual memory (bytes)=4657483776
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters 
                Bytes Read=2500000000
        File Output Format Counters 
                Bytes Written=2500000000
2026-01-25 15:45:57,259 INFO terasort.TeraSort: done
```

### Task 3/4 

**yarn jar hadoop-examples.jar MaxTemperature /user/slavafh/data/ncdc-input/ncdc output-ncdc-mr**
```bash
slavafh@vkhvorostianyi-2025-12-13-m:~$ yarn jar hadoop-examples.jar MaxTemperature /user/slavafh/data/ncdc-input/ncdc output-ncdc-mr
2026-01-25 16:00:06,933 INFO client.RMProxy: Connecting to ResourceManager at vkhvorostianyi-2025-12-13-m/10.128.0.22:8032
2026-01-25 16:00:07,175 INFO client.AHSProxy: Connecting to Application History server at vkhvorostianyi-2025-12-13-m/10.128.0.22:10200
2026-01-25 16:00:07,467 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2026-01-25 16:00:07,490 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/slavafh/.staging/job_1769353978274_0010
2026-01-25 16:00:07,898 WARN concurrent.ExecutorHelper: Thread (Thread[GetFileInfo #1,5,main]) interrupted: 
java.lang.InterruptedException
        at com.google.common.util.concurrent.AbstractFuture.get(AbstractFuture.java:510)
        at com.google.common.util.concurrent.FluentFuture$TrustedFuture.get(FluentFuture.java:88)
        at org.apache.hadoop.util.concurrent.ExecutorHelper.logThrowableFromAfterExecute(ExecutorHelper.java:48)
        at org.apache.hadoop.util.concurrent.HadoopThreadPoolExecutor.afterExecute(HadoopThreadPoolExecutor.java:90)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1157)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:750)
2026-01-25 16:00:07,900 INFO input.FileInputFormat: Total input files to process : 4
2026-01-25 16:00:08,004 INFO mapreduce.JobSubmitter: number of splits:4
2026-01-25 16:00:08,296 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1769353978274_0010
2026-01-25 16:00:08,298 INFO mapreduce.JobSubmitter: Executing with tokens: []
2026-01-25 16:00:08,539 INFO conf.Configuration: resource-types.xml not found
2026-01-25 16:00:08,539 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2026-01-25 16:00:08,616 INFO impl.YarnClientImpl: Submitted application application_1769353978274_0010
2026-01-25 16:00:08,661 INFO mapreduce.Job: The url to track the job: http://vkhvorostianyi-2025-12-13-m:8088/proxy/application_1769353978274_0010/
2026-01-25 16:00:08,661 INFO mapreduce.Job: Running job: job_1769353978274_0010
2026-01-25 16:00:16,791 INFO mapreduce.Job: Job job_1769353978274_0010 running in uber mode : false
2026-01-25 16:00:16,792 INFO mapreduce.Job:  map 0% reduce 0%
2026-01-25 16:00:34,006 INFO mapreduce.Job:  map 11% reduce 0%
2026-01-25 16:00:37,029 INFO mapreduce.Job:  map 21% reduce 0%
2026-01-25 16:00:40,054 INFO mapreduce.Job:  map 26% reduce 0%
2026-01-25 16:00:41,072 INFO mapreduce.Job:  map 35% reduce 0%
2026-01-25 16:00:43,084 INFO mapreduce.Job:  map 44% reduce 0%
2026-01-25 16:00:49,128 INFO mapreduce.Job:  map 54% reduce 0%
2026-01-25 16:00:55,171 INFO mapreduce.Job:  map 64% reduce 0%
2026-01-25 16:00:57,186 INFO mapreduce.Job:  map 72% reduce 0%
2026-01-25 16:01:01,212 INFO mapreduce.Job:  map 77% reduce 0%
2026-01-25 16:01:07,253 INFO mapreduce.Job:  map 87% reduce 0%
2026-01-25 16:01:12,286 INFO mapreduce.Job:  map 91% reduce 0%
2026-01-25 16:01:13,293 INFO mapreduce.Job:  map 95% reduce 0%
2026-01-25 16:01:15,307 INFO mapreduce.Job:  map 100% reduce 0%
2026-01-25 16:01:22,353 INFO mapreduce.Job:  map 100% reduce 29%
2026-01-25 16:01:26,379 INFO mapreduce.Job:  map 100% reduce 43%
2026-01-25 16:01:32,414 INFO mapreduce.Job:  map 100% reduce 57%
2026-01-25 16:01:33,421 INFO mapreduce.Job:  map 100% reduce 86%
2026-01-25 16:01:34,427 INFO mapreduce.Job:  map 100% reduce 100%
2026-01-25 16:01:36,449 INFO mapreduce.Job: Job job_1769353978274_0010 completed successfully
2026-01-25 16:01:36,546 INFO mapreduce.Job: Counters: 56
        File System Counters
                FILE: Number of bytes read=655392526
                FILE: Number of bytes written=1066504326
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=966117299
                HDFS: Number of bytes written=36
                HDFS: Number of read operations=47
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=21
                HDFS: Number of bytes read erasure-coded=0
        Job Counters 
                Killed map tasks=2
                Killed reduce tasks=1
                Launched map tasks=6
                Launched reduce tasks=8
                Data-local map tasks=6
                Total time spent by all maps in occupied slots (ms)=728101738
                Total time spent by all reduces in occupied slots (ms)=283689238
                Total time spent by all map tasks (ms)=215033
                Total time spent by all reduce tasks (ms)=83783
                Total vcore-milliseconds taken by all map tasks=215033
                Total vcore-milliseconds taken by all reduce tasks=83783
                Total megabyte-milliseconds taken by all map tasks=728101738
                Total megabyte-milliseconds taken by all reduce tasks=283689238
        Map-Reduce Framework
                Map input records=37708865
                Map output records=37133103
                Map output bytes=334197927
                Map output materialized bytes=408464301
                Input split bytes=564
                Combine input records=0
                Combine output records=0
                Reduce input groups=4
                Reduce shuffle bytes=408464301
                Reduce input records=37133103
                Reduce output records=4
                Spilled Records=96710487
                Shuffled Maps =28
                Failed Shuffles=0
                Merged Map outputs=28
                GC time elapsed (ms)=2790
                CPU time spent (ms)=215440
                Physical memory (bytes) snapshot=7926435840
                Virtual memory (bytes) snapshot=50986582016
                Total committed heap usage (bytes)=7395606528
                Peak Map Physical memory (bytes)=1417916416
                Peak Map Virtual memory (bytes)=4640231424
                Peak Reduce Physical memory (bytes)=385253376
                Peak Reduce Virtual memory (bytes)=4638068736
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters 
                Bytes Read=966116735
        File Output Format Counters 
                Bytes Written=36
```

**yarn jar hadoop-examples.jar MaxTemperature gs://oklev-uku-datasets/ncdc output-ncdc-mr-gs**
```bash
slavafh@vkhvorostianyi-2025-12-13-m:~$ yarn jar hadoop-examples.jar MaxTemperature gs://oklev-uku-datasets/ncdc output-ncdc-mr-gs
2026-01-25 16:07:16,285 INFO client.RMProxy: Connecting to ResourceManager at vkhvorostianyi-2025-12-13-m/10.128.0.22:8032
2026-01-25 16:07:16,483 INFO client.AHSProxy: Connecting to Application History server at vkhvorostianyi-2025-12-13-m/10.128.0.22:10200
2026-01-25 16:07:16,719 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2026-01-25 16:07:16,739 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/slavafh/.staging/job_1769353978274_0011
2026-01-25 16:07:17,542 INFO input.FileInputFormat: Total input files to process : 4
2026-01-25 16:07:17,626 INFO mapreduce.JobSubmitter: number of splits:4
2026-01-25 16:07:17,784 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1769353978274_0011
2026-01-25 16:07:17,786 INFO mapreduce.JobSubmitter: Executing with tokens: []
2026-01-25 16:07:18,005 INFO conf.Configuration: resource-types.xml not found
2026-01-25 16:07:18,005 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2026-01-25 16:07:18,078 INFO impl.YarnClientImpl: Submitted application application_1769353978274_0011
2026-01-25 16:07:18,118 INFO mapreduce.Job: The url to track the job: http://vkhvorostianyi-2025-12-13-m:8088/proxy/application_1769353978274_0011/
2026-01-25 16:07:18,119 INFO mapreduce.Job: Running job: job_1769353978274_0011
2026-01-25 16:07:27,270 INFO mapreduce.Job: Job job_1769353978274_0011 running in uber mode : false
2026-01-25 16:07:27,271 INFO mapreduce.Job:  map 0% reduce 0%
2026-01-25 16:07:49,449 INFO mapreduce.Job:  map 9% reduce 0%
2026-01-25 16:07:55,492 INFO mapreduce.Job:  map 19% reduce 0%
2026-01-25 16:08:01,532 INFO mapreduce.Job:  map 30% reduce 0%
2026-01-25 16:08:07,571 INFO mapreduce.Job:  map 43% reduce 0%
2026-01-25 16:08:13,611 INFO mapreduce.Job:  map 55% reduce 0%
2026-01-25 16:08:17,647 INFO mapreduce.Job:  map 63% reduce 0%
2026-01-25 16:08:18,654 INFO mapreduce.Job:  map 71% reduce 0%
2026-01-25 16:08:19,660 INFO mapreduce.Job:  map 75% reduce 0%
2026-01-25 16:08:25,698 INFO mapreduce.Job:  map 80% reduce 0%
2026-01-25 16:08:31,739 INFO mapreduce.Job:  map 87% reduce 0%
2026-01-25 16:08:37,778 INFO mapreduce.Job:  map 91% reduce 0%
2026-01-25 16:08:38,784 INFO mapreduce.Job:  map 94% reduce 0%
2026-01-25 16:08:43,815 INFO mapreduce.Job:  map 95% reduce 0%
2026-01-25 16:08:45,828 INFO mapreduce.Job:  map 100% reduce 0%
2026-01-25 16:08:53,877 INFO mapreduce.Job:  map 100% reduce 14%
2026-01-25 16:09:00,921 INFO mapreduce.Job:  map 100% reduce 29%
2026-01-25 16:09:04,943 INFO mapreduce.Job:  map 100% reduce 43%
2026-01-25 16:09:05,949 INFO mapreduce.Job:  map 100% reduce 57%
2026-01-25 16:09:06,954 INFO mapreduce.Job:  map 100% reduce 71%
2026-01-25 16:09:11,984 INFO mapreduce.Job:  map 100% reduce 86%
2026-01-25 16:09:12,990 INFO mapreduce.Job:  map 100% reduce 100%
2026-01-25 16:09:15,010 INFO mapreduce.Job: Job job_1769353978274_0011 completed successfully
2026-01-25 16:09:15,120 INFO mapreduce.Job: Counters: 61
        File System Counters
                FILE: Number of bytes read=655392526
                FILE: Number of bytes written=1066503919
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                GS: Number of bytes read=966116735
                GS: Number of bytes written=0
                GS: Number of read operations=235870
                GS: Number of large read operations=0
                GS: Number of write operations=0
                HDFS: Number of bytes read=404
                HDFS: Number of bytes written=36
                HDFS: Number of read operations=43
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=21
                HDFS: Number of bytes read erasure-coded=0
        Job Counters 
                Killed map tasks=1
                Killed reduce tasks=2
                Launched map tasks=5
                Launched reduce tasks=8
                Rack-local map tasks=5
                Total time spent by all maps in occupied slots (ms)=907905110
                Total time spent by all reduces in occupied slots (ms)=394167646
                Total time spent by all map tasks (ms)=268135
                Total time spent by all reduce tasks (ms)=116411
                Total vcore-milliseconds taken by all map tasks=268135
                Total vcore-milliseconds taken by all reduce tasks=116411
                Total megabyte-milliseconds taken by all map tasks=907905110
                Total megabyte-milliseconds taken by all reduce tasks=394167646
        Map-Reduce Framework
                Map input records=37708865
                Map output records=37133103
                Map output bytes=334197927
                Map output materialized bytes=408464301
                Input split bytes=404
                Combine input records=0
                Combine output records=0
                Reduce input groups=4
                Reduce shuffle bytes=408464301
                Reduce input records=37133103
                Reduce output records=4
                Spilled Records=96710487
                Shuffled Maps =28
                Failed Shuffles=0
                Merged Map outputs=28
                GC time elapsed (ms)=6006
                CPU time spent (ms)=265590
                Physical memory (bytes) snapshot=8090038272
                Virtual memory (bytes) snapshot=51055808512
                Total committed heap usage (bytes)=7795638272
                Peak Map Physical memory (bytes)=1407565824
                Peak Map Virtual memory (bytes)=4658630656
                Peak Reduce Physical memory (bytes)=542855168
                Peak Reduce Virtual memory (bytes)=4642844672
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters 
                Bytes Read=966116735
        File Output Format Counters 
                Bytes Written=36
```

**hdfs dfs -ls output-ncdc-mr/**  
**hdfs dfs -cat output-ncdc-mr/***
```bash
slavafh@vkhvorostianyi-2025-12-13-m:~$ hdfs dfs -ls output-ncdc-mr/
Found 8 items
-rw-r--r--   2 slavafh hadoop          0 2026-01-25 16:01 output-ncdc-mr/_SUCCESS
-rw-r--r--   2 slavafh hadoop          0 2026-01-25 16:01 output-ncdc-mr/part-r-00000
-rw-r--r--   2 slavafh hadoop          0 2026-01-25 16:01 output-ncdc-mr/part-r-00001
-rw-r--r--   2 slavafh hadoop          9 2026-01-25 16:01 output-ncdc-mr/part-r-00002
-rw-r--r--   2 slavafh hadoop          9 2026-01-25 16:01 output-ncdc-mr/part-r-00003
-rw-r--r--   2 slavafh hadoop          9 2026-01-25 16:01 output-ncdc-mr/part-r-00004
-rw-r--r--   2 slavafh hadoop          9 2026-01-25 16:01 output-ncdc-mr/part-r-00005
-rw-r--r--   2 slavafh hadoop          0 2026-01-25 16:01 output-ncdc-mr/part-r-00006
slavafh@vkhvorostianyi-2025-12-13-m:~$ hdfs dfs -cat output-ncdc-mr/*
1963    489
1964    489
1965    489
1966    506
slavafh@vkhvorostianyi-2025-12-13-m:~$ hdfs dfs -ls output-ncdc-mr-gs/
Found 8 items
-rw-r--r--   2 slavafh hadoop          0 2026-01-25 16:09 output-ncdc-mr-gs/_SUCCESS
-rw-r--r--   2 slavafh hadoop          0 2026-01-25 16:08 output-ncdc-mr-gs/part-r-00000
-rw-r--r--   2 slavafh hadoop          0 2026-01-25 16:08 output-ncdc-mr-gs/part-r-00001
-rw-r--r--   2 slavafh hadoop          9 2026-01-25 16:09 output-ncdc-mr-gs/part-r-00002
-rw-r--r--   2 slavafh hadoop          9 2026-01-25 16:09 output-ncdc-mr-gs/part-r-00003
-rw-r--r--   2 slavafh hadoop          9 2026-01-25 16:09 output-ncdc-mr-gs/part-r-00004
-rw-r--r--   2 slavafh hadoop          9 2026-01-25 16:09 output-ncdc-mr-gs/part-r-00005
-rw-r--r--   2 slavafh hadoop          0 2026-01-25 16:09 output-ncdc-mr-gs/part-r-00006
slavafh@vkhvorostianyi-2025-12-13-m:~$ hdfs dfs -cat output-ncdc-mr-gs/*
1963    489
1964    489
1965    489
1966    506
```
#### What's wrong?
The MapReduce job is using 7 reducers (default configuration) to produce only 4 output records (one per year: 1963-1966), resulting in 3 empty output files and significant resource waste when a single reducer would be sufficient.

### Task 5
```bash
slavafh@vkhvorostianyi-2025-12-13-m:~$ cd ncdc/
slavafh@vkhvorostianyi-2025-12-13-m:~/ncdc$ ls
1963.gz  1964.gz  1965.gz  1966.gz
slavafh@vkhvorostianyi-2025-12-13-m:~/ncdc$ gunzip *.gz
slavafh@vkhvorostianyi-2025-12-13-m:~/ncdc$ ls
1963  1964  1965  1966
slavafh@vkhvorostianyi-2025-12-13-m:~/ncdc$ hdfs dfs -mkdir -p /user/slavafh/data/ncdc-input-unarchived
slavafh@vkhvorostianyi-2025-12-13-m:~/ncdc$ hdfs dfs -put ~/ncdc/* /user/slavafh/data/ncdc-input-unarchived/
yarn jar hadoop-examples.jar MaxTemperature \
>   /user/slavafh/data/ncdc-input-unarchived output-ncdc-unarchived-mr
2026-01-25 16:30:56,927 INFO client.RMProxy: Connecting to ResourceManager at vkhvorostianyi-2025-12-13-m/10.128.0.22:8032
2026-01-25 16:30:57,157 INFO client.AHSProxy: Connecting to Application History server at vkhvorostianyi-2025-12-13-m/10.128.0.22:10200
2026-01-25 16:30:57,387 WARN mapreduce.JobResourceUploader: Hadoop command-line option parsing not performed. Implement the Tool interface and execute your application with ToolRunner to remedy this.
2026-01-25 16:30:57,412 INFO mapreduce.JobResourceUploader: Disabling Erasure Coding for path: /tmp/hadoop-yarn/staging/slavafh/.staging/job_1769353978274_0012
2026-01-25 16:30:57,776 WARN concurrent.ExecutorHelper: Thread (Thread[GetFileInfo #1,5,main]) interrupted: 
java.lang.InterruptedException
        at com.google.common.util.concurrent.AbstractFuture.get(AbstractFuture.java:510)
        at com.google.common.util.concurrent.FluentFuture$TrustedFuture.get(FluentFuture.java:88)
        at org.apache.hadoop.util.concurrent.ExecutorHelper.logThrowableFromAfterExecute(ExecutorHelper.java:48)
        at org.apache.hadoop.util.concurrent.HadoopThreadPoolExecutor.afterExecute(HadoopThreadPoolExecutor.java:90)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1157)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:750)
2026-01-25 16:30:57,780 INFO input.FileInputFormat: Total input files to process : 4
2026-01-25 16:30:57,872 INFO mapreduce.JobSubmitter: number of splits:74
2026-01-25 16:30:58,192 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1769353978274_0012
2026-01-25 16:30:58,196 INFO mapreduce.JobSubmitter: Executing with tokens: []
2026-01-25 16:30:58,458 INFO conf.Configuration: resource-types.xml not found
2026-01-25 16:30:58,459 INFO resource.ResourceUtils: Unable to find 'resource-types.xml'.
2026-01-25 16:30:58,599 INFO impl.YarnClientImpl: Submitted application application_1769353978274_0012
2026-01-25 16:30:58,778 INFO mapreduce.Job: The url to track the job: http://vkhvorostianyi-2025-12-13-m:8088/proxy/application_1769353978274_0012/
2026-01-25 16:30:58,782 INFO mapreduce.Job: Running job: job_1769353978274_0012
2026-01-25 16:31:07,945 INFO mapreduce.Job: Job job_1769353978274_0012 running in uber mode : false
2026-01-25 16:31:07,947 INFO mapreduce.Job:  map 0% reduce 0%
2026-01-25 16:31:25,156 INFO mapreduce.Job:  map 4% reduce 0%
2026-01-25 16:31:27,177 INFO mapreduce.Job:  map 5% reduce 0%
2026-01-25 16:31:28,185 INFO mapreduce.Job:  map 9% reduce 0%
2026-01-25 16:31:36,245 INFO mapreduce.Job:  map 11% reduce 0%
2026-01-25 16:31:37,252 INFO mapreduce.Job:  map 14% reduce 0%
2026-01-25 16:31:41,301 INFO mapreduce.Job:  map 15% reduce 0%
2026-01-25 16:31:42,308 INFO mapreduce.Job:  map 18% reduce 0%
2026-01-25 16:31:43,315 INFO mapreduce.Job:  map 19% reduce 0%
2026-01-25 16:31:46,335 INFO mapreduce.Job:  map 20% reduce 0%
2026-01-25 16:31:48,355 INFO mapreduce.Job:  map 23% reduce 0%
2026-01-25 16:31:53,391 INFO mapreduce.Job:  map 24% reduce 0%
2026-01-25 16:31:55,404 INFO mapreduce.Job:  map 26% reduce 0%
2026-01-25 16:31:56,411 INFO mapreduce.Job:  map 30% reduce 0%
2026-01-25 16:31:58,423 INFO mapreduce.Job:  map 31% reduce 0%
2026-01-25 16:31:59,430 INFO mapreduce.Job:  map 32% reduce 0%
2026-01-25 16:32:06,477 INFO mapreduce.Job:  map 34% reduce 0%
2026-01-25 16:32:07,484 INFO mapreduce.Job:  map 35% reduce 0%
2026-01-25 16:32:10,503 INFO mapreduce.Job:  map 41% reduce 0%
2026-01-25 16:32:11,511 INFO mapreduce.Job:  map 42% reduce 0%
2026-01-25 16:32:16,560 INFO mapreduce.Job:  map 43% reduce 0%
2026-01-25 16:32:19,584 INFO mapreduce.Job:  map 45% reduce 0%
2026-01-25 16:32:20,590 INFO mapreduce.Job:  map 46% reduce 0%
2026-01-25 16:32:21,596 INFO mapreduce.Job:  map 47% reduce 0%
2026-01-25 16:32:23,608 INFO mapreduce.Job:  map 49% reduce 0%
2026-01-25 16:32:26,640 INFO mapreduce.Job:  map 51% reduce 0%
2026-01-25 16:32:27,646 INFO mapreduce.Job:  map 53% reduce 0%
2026-01-25 16:32:29,664 INFO mapreduce.Job:  map 54% reduce 0%
2026-01-25 16:32:31,676 INFO mapreduce.Job:  map 55% reduce 0%
2026-01-25 16:32:33,690 INFO mapreduce.Job:  map 57% reduce 0%
2026-01-25 16:32:37,715 INFO mapreduce.Job:  map 58% reduce 0%
2026-01-25 16:32:38,720 INFO mapreduce.Job:  map 59% reduce 0%
2026-01-25 16:32:39,726 INFO mapreduce.Job:  map 61% reduce 0%
2026-01-25 16:32:40,734 INFO mapreduce.Job:  map 62% reduce 0%
2026-01-25 16:32:42,745 INFO mapreduce.Job:  map 65% reduce 0%
2026-01-25 16:32:46,766 INFO mapreduce.Job:  map 66% reduce 0%
2026-01-25 16:32:48,778 INFO mapreduce.Job:  map 68% reduce 0%
2026-01-25 16:32:50,791 INFO mapreduce.Job:  map 69% reduce 0%
2026-01-25 16:32:51,802 INFO mapreduce.Job:  map 70% reduce 0%
2026-01-25 16:32:52,807 INFO mapreduce.Job:  map 72% reduce 0%
2026-01-25 16:32:55,823 INFO mapreduce.Job:  map 74% reduce 0%
2026-01-25 16:32:59,850 INFO mapreduce.Job:  map 77% reduce 0%
2026-01-25 16:33:03,870 INFO mapreduce.Job:  map 78% reduce 0%
2026-01-25 16:33:04,876 INFO mapreduce.Job:  map 81% reduce 0%
2026-01-25 16:33:08,909 INFO mapreduce.Job:  map 82% reduce 0%
2026-01-25 16:33:11,928 INFO mapreduce.Job:  map 84% reduce 0%
2026-01-25 16:33:12,935 INFO mapreduce.Job:  map 85% reduce 0%
2026-01-25 16:33:13,941 INFO mapreduce.Job:  map 86% reduce 0%
2026-01-25 16:33:15,957 INFO mapreduce.Job:  map 89% reduce 0%
2026-01-25 16:33:17,974 INFO mapreduce.Job:  map 91% reduce 0%
2026-01-25 16:33:18,982 INFO mapreduce.Job:  map 92% reduce 0%
2026-01-25 16:33:24,024 INFO mapreduce.Job:  map 95% reduce 0%
2026-01-25 16:33:26,035 INFO mapreduce.Job:  map 99% reduce 0%
2026-01-25 16:33:27,041 INFO mapreduce.Job:  map 100% reduce 0%
2026-01-25 16:33:34,080 INFO mapreduce.Job:  map 100% reduce 29%
2026-01-25 16:33:38,101 INFO mapreduce.Job:  map 100% reduce 43%
2026-01-25 16:33:44,134 INFO mapreduce.Job:  map 100% reduce 57%
2026-01-25 16:33:45,139 INFO mapreduce.Job:  map 100% reduce 71%
2026-01-25 16:33:46,144 INFO mapreduce.Job:  map 100% reduce 85%
2026-01-25 16:33:47,149 INFO mapreduce.Job:  map 100% reduce 100%
2026-01-25 16:33:48,164 INFO mapreduce.Job: Job job_1769353978274_0012 completed successfully
2026-01-25 16:33:48,267 INFO mapreduce.Job: Counters: 56
        File System Counters
                FILE: Number of bytes read=408464175
                FILE: Number of bytes written=836739609
                FILE: Number of read operations=0
                FILE: Number of large read operations=0
                FILE: Number of write operations=0
                HDFS: Number of bytes read=9655463715
                HDFS: Number of bytes written=36
                HDFS: Number of read operations=257
                HDFS: Number of large read operations=0
                HDFS: Number of write operations=21
                HDFS: Number of bytes read erasure-coded=0
        Job Counters 
                Killed map tasks=1
                Killed reduce tasks=1
                Launched map tasks=74
                Launched reduce tasks=8
                Data-local map tasks=74
                Total time spent by all maps in occupied slots (ms)=2979226276
                Total time spent by all reduces in occupied slots (ms)=303832552
                Total time spent by all map tasks (ms)=879866
                Total time spent by all reduce tasks (ms)=89732
                Total vcore-milliseconds taken by all map tasks=879866
                Total vcore-milliseconds taken by all reduce tasks=89732
                Total megabyte-milliseconds taken by all map tasks=2979226276
                Total megabyte-milliseconds taken by all reduce tasks=303832552
        Map-Reduce Framework
                Map input records=37708865
                Map output records=37133103
                Map output bytes=334197927
                Map output materialized bytes=408467241
                Input split bytes=10656
                Combine input records=0
                Combine output records=0
                Reduce input groups=4
                Reduce shuffle bytes=408467241
                Reduce input records=37133103
                Reduce output records=4
                Spilled Records=74266206
                Shuffled Maps =518
                Failed Shuffles=0
                Merged Map outputs=518
                GC time elapsed (ms)=22806
                CPU time spent (ms)=518050
                Physical memory (bytes) snapshot=60146450432
                Virtual memory (bytes) snapshot=376039772160
                Total committed heap usage (bytes)=58969817088
                Peak Map Physical memory (bytes)=959971328
                Peak Map Virtual memory (bytes)=4701188096
                Peak Reduce Physical memory (bytes)=417091584
                Peak Reduce Virtual memory (bytes)=4643037184
        Shuffle Errors
                BAD_ID=0
                CONNECTION=0
                IO_ERROR=0
                WRONG_LENGTH=0
                WRONG_MAP=0
                WRONG_REDUCE=0
        File Input Format Counters 
                Bytes Read=9655453059
        File Output Format Counters 
                Bytes Written=36
                
                
```

### Task 5 Summary: Compressed vs Unarchived Data Comparison

## Setup
- Unzipped compressed files: `gunzip *.gz`
- Copied unarchived data to HDFS: `/user/slavafh/data/ncdc-input-unarchived`
- Ran MaxTemperature MapReduce job on unarchived data

#### Key Findings

| Metric | Task 4 (Compressed) | Task 5 (Unarchived) | Difference |
|--------|---------------------|---------------------|------------|
| **Input Size** | 966 MB | **9.65 GB** | **10x larger** |
| **Execution Time** | \~90 sec | **\~171 sec** | **1.9x slower** |
| **Number of Mappers** | 4 | **74** | **18.5x more** |
| **Map Tasks (total)** | 6 (4+2 killed) | **74** (1 killed) | **12.3x more** |
| **Total Map Time** | 215,033 ms | **879,866 ms** | **4.1x longer** |
| **Shuffled Maps** | 28 | **518** | **18.5x more** |
| **Physical Memory** | 7.9 GB | **60.1 GB** | **7.6x more** |
| **GC Time** | 2,790 ms | **22,806 ms** | **8.2x longer** |
| **Output** | 4 records (36 bytes) | 4 records (36 bytes) | Identical |

#### Why These Differences?

1. **More Mappers**: Unarchived files exceed the 128 MB HDFS block size, so each file was split into \~18-19 mappers instead of 1
2. **Slower Performance**: Despite parallel processing, overhead from:
   - More task scheduling and coordination
   - Larger data volume to read from disk
   - No compression I/O savings
   - Significantly more memory and GC overhead

3. **Resource Intensive**: Required 7.6x more memory and 18.5x more shuffle operations

##### Conclusion
**Compressed data is far more efficient** for MapReduce processing, providing **2x faster execution** with **18x fewer mappers** and **7x less memory usage**, despite requiring CPU for decompression.
