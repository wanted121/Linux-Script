#!/bin/bash

echo "------------------Memory Menagement-------------------"
total_mem=`free -h | grep ^Mem | awk '{print $2}'`

uses_mem=`free -h | grep ^Mem | awk '{print $3}'`
echo  "Total Memory :  $total_mem" 
echo "Total Memory Uses : $uses_mem"

echo "--------------Memory Uses Pppercentage-----------------" 
for_div=1024
for_per_mem_uses=`free | grep ^Mem | awk '{print $3}'`
mem_uses_mb=`expr $for_per_mem_uses "/" $for_div | bc -l`

echo $mem_uses_mb
total_mem_MB=`free | grep ^Mem | awk '{print $2}'`
total_mem_mb=`expr $total_mem_MB "*" $for_div | bc -l`
echo $total_mem_mb
data=100;
mem_uses_percentage=`expr $mem_uses_mb "*" $data`
mem_uses_percentage=`expr $mem_uses_percentage "/" $total_mem_mb |  bc -l`

echo "Total Memory Percentage Uses : $mem_uses_percentage"
