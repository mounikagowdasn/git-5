#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numofWorkingDays=20
maxRateInMonth=100

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours()
{
        case $1 in
                    $isFullTime )	
                              empHrs=8
                    ;;
                     $isPartTime )
                               empHrs=4	
                    ;;
                    *)
                               empHrs=0	
                    ;;
         esac
}

while [[ $totalEmpHr -lt $maxRateInMonth &&
         $totalWorkingDays -lt $numofWorkingDays ]]
do
        ((totalWorkingDays++))
         getWorkingHours $((RANDOM%3))
         totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
