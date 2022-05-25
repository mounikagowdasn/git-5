#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numofWorkingDays=20

totalsalary=0

for (( day=1; day<=$numofWorkingDays; day++ ))
do
        randomCheck=$((RANDOM%3))
         case $randomCheck in
                                 $isFullTime )
                                          empHrs=8	
                                 ;;
                                 $isPartTime=4 )
                                           empHrs=4	
                                 ;;
                                 *)
                                           empHrs=0	
          esac
         salary=$(($empHrs*$empRatePerHr))
         totalSalary=$(($totalSalary+$salary))
done

