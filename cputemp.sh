#!/bin/bash
temp=$(</sys/class/thermal/thermal_zone0/temp)
echo $(($temp/1000)).$(($temp%1000))
