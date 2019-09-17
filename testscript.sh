# cat /tmp/testscript.sh
#!/bin/bash

wait_period=0

while true
do
    echo "Time Now: `date +%H:%M:%S`"
    curl http://jenkin-x-example.jx-production.34.87.64.181.nip.io/ping
    echo "Sleeping for 10 seconds"
    # Here 300 is 300 seconds i.e. 5 minutes * 60 = 300 sec
    wait_period=$(($wait_period+10))
    if [ $wait_period -gt 300 ];then
       echo "The script successfully ran for 5 minutes, exiting now.."
       break
    else
       sleep 10
    fi
done
