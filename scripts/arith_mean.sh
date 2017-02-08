#!/usr/bin/env bash

#computes the arithmetic mean
#1 Path to file containing numeric values one per line
arith_mean() {
  
  sum=0				# Hold summation
  fname=$1			# File to take estimate of
  count=0	                # Hold count of number of lines

  while read line
  do
    sum=$((sum+line))		# Sum
    count=$((count+1))
  done < "$fname"

  if [ "$count" != 0 ]; then
    mu=$((sum/count))
    echo "Sum = $sum, Count = $count, Mean =$mu"
  else
    echo "Please supply a file with more than 1 line of numerical input."
  fi

}

arith_mean $1			# Function call
