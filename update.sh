#rrdtool update /home/pi/cputemp/pitemp.rrd N:`/opt/vc/bin/vcgencmd measure_temp | cut -f2 -d"=" | cut -f1 -d"'"`
rrdtool update /home/pi/cputemp/pitemp.rrd N:`/home/pi/cputemp/cputemp.sh`
