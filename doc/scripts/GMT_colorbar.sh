#!/bin/bash
#	$Id: GMT_anchor.sh 14405 2015-06-26 23:02:31Z pwessel $
#
ps=GMT_colorbar.ps
gmt makecpt -T-30/30/5 -Cpolar -Z > t.cpt
gmt psbasemap -R0/20/0/1 -JM5i -BWSe -P -K -Baf > $ps
gmt psscale -Ct.cpt -R -J -O -K -Baf -Bx+u\\312 -By+l@~D@~T -E -DjBC+o0.35i+w4.5i/0.1i+h >> $ps
gmt psxy -R -J -O -T >> $ps