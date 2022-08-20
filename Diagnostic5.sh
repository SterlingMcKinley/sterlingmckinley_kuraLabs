#!/bin/bash
# ======================================================================
# SCRIPT NAME: Diagnostic5.sh
# Description: Create a script that will automate 
#               the creation of the Memory and CPU usage file, and push 
#                   the file to your repository.
#
# REVISION HISTORY: N/A
#
# AUTHOR		   DATE			DETAILS
# --------------------- --------------- --------------------------------
# Sterling McKinley	 2022-08-20	  Initial version
# ======================================================================
mem=$(free -t | awk 'NR == 2 {printf("Current Memory Utilization is : %.2f%"), $3/$2*100}')
cpu=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')

touch resource.txt
chmod 755 resoruce.txt
date;time
echo" "
echo" "
$mem" >> resource.txt
echo " "
echo "Current Memory Utilization is : " >> resource.txt
"$cpu" >> resource.txt
