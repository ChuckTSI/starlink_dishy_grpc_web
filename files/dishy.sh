#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/go/bin
export DISPLAY=:0.0

## define end value ##
END=59
x=$END
while [ $x -gt 0 ];
do
  grpcurl -plaintext -d '{"get_status":{}}' 192.168.100.1:9200 SpaceX.API.Device.Device/Handle | awk 'NR==3{print "    \"projectInfo\"\: \{"}NR==3{print "\t\"name\"\: \"starlink_dishy_grpc_web\","}NR==3{print "\t\"author\"\: \"ChuckTSI\","}NR==3{print "\t\"url\"\: \"github.com/ChuckTSI/starlink_dishy_grpc_web\""}NR==3{print "    \},"}1' > /var/lib/nginx/html/get_status.json
  #printf .
  sleep 1
  #x=$(($x-1))
done
