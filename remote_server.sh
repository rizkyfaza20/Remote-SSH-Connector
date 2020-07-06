#!/bin/bash

# Tools for Remote server

function remote()
{
echo "Connect your server NoLimit via SSH Terminal"
echo ""
echo "-------------------------------------------"

echo "Please select your server : "

select opt in Support Muara Care Dashboardv4 Analytic Exit; do

  case $opt in
	Support)
	  clear
	  ssh support1
	;;
	Muara)
	  clear
	  ssh -t support1 "ssh -t muara"
	;;
	Care)
	 clear
	 ssh -t support1 "ssh -t care"
	;;
	Dashboardv4)
	 clear
	 ssh -t support1 "ssh -t root@beta.dashboard.nolimit.id"
	;;
	Analytic)
    	 clear
	 ssh -t support1 "ssh analytic"
	;;
	Exit)
	exit 1
	;;
	*)
	 echo "Sorry your input option not recognized."
	;;
  esac
REPLY=""
done
}
remote

