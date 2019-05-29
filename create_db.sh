#/bin/bash

#rrdtool create pitemp.rrd --start N --step 30 \    # Collect every 30 seconds
#    DS:cputemp:GAUGE:60:0:100    \                 # Allow 0 to 100, uknown after 1 minute
#    RRA:MIN:0.5:120:8760         \                 # Minimum each hour, save for 1 year
#    RRA:MAX:0.5:120:8760         \                 # Maximum each hour, save for 1 year
#    RRA:AVERAGE:0.5:1:1051200                      # Save data for 1 year
 
rrdtool create pitemp.rrd --start N --step 30 \
    DS:cputemp:GAUGE:60:0:100    \
    RRA:MIN:0.5:120:8760         \
    RRA:MAX:0.5:120:8760         \
    RRA:AVERAGE:0.5:1:1051200                      # Save data for 1 year
