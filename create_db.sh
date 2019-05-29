rrdtool create pitemp.rrd --start N --step 300 DS:cputemp:GAUGE:600:0:100 RRA:MIN:0.5:12:1440 RRA:MAX:0.5:12:1440 RRA:AVERAGE:0.5:1:1440
