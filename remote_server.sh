#!/bin/bash

echo "Connect your server NoLimit via SSH Terminal"
echo ""
echo "-------------------------------------------"

echo "Please select your server : "

select opt in Support Muara Care Dashboardv4 Analytic Exit; do

  case $opt in
	Support)
	  ssh support1
	;;
	Muara)
	  ssh -t support1 "ssh -t muara"
	;;
	Care)
	 ssh -t support1 "ssh -t care"
	;;
	Dashboardv4)
	 ssh -t support1 "ssh -t root@beta.dashboard.nolimit.id"
	;;
	Analytic)
	 ssh -t support1 "ssh analytic"
	;;
	Exit)
	exit 1
	;;
	*)
	 echo "Sorry your input option not recognized. Exiting."
	 exit 1
	;;
  esac
done

