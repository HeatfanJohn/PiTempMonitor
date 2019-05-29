#!/bin/bash
DIR="/home/pi/cputemp"
GRAPH_DIR="/home/pi/wwwroot"
RRD="pitemp.rrd"
VAR="cputemp"
 
#set to C if using Celsius
TEMP_SCALE="C"
 
#define the desired colors for the graphs
INTEMP_COLOR="#CC0000"
OUTTEMP_COLOR="#0000FF"
 
#hourly
rrdtool graph $GRAPH_DIR/cputemp_hourly.png --start -4h --width 800 --height 600  \
DEF:temp=$DIR/$RRD:$VAR:AVERAGE \
LINE1:temp$INTEMP_COLOR:"Temperature [deg $TEMP_SCALE]" \
 
#daily
rrdtool graph $GRAPH_DIR/cputemp_daily.png --start -1d --width 800 --height 600 \
DEF:temp=$DIR/$RRD:$VAR:AVERAGE \
LINE1:temp$INTEMP_COLOR:"Temperature [deg $TEMP_SCALE]" \

#weekly
rrdtool graph $GRAPH_DIR/cputemp_weekly.png --start -1w --width 800 --height 600 \
DEF:temp=$DIR/$RRD:$VAR:AVERAGE \
LINE1:temp$INTEMP_COLOR:"Temperature [deg $TEMP_SCALE]" \

#monthly
rrdtool graph $GRAPH_DIR/cputemp_monthly.png --start -5w --width 800 --height 600 \
DEF:temp=$DIR/$RRD:$VAR:AVERAGE \
LINE1:temp$INTEMP_COLOR:"Temperature [deg $TEMP_SCALE]" \
 
#yearly
rrdtool graph $GRAPH_DIR/cputemp_yearly.png --start -1y --width 800 --height 600 \
DEF:temp=$DIR/$RRD:$VAR:AVERAGE \
LINE1:temp$INTEMP_COLOR:"Temperature [deg $TEMP_SCALE]" \
