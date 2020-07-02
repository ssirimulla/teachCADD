#!/bin/bash
for f in /scratch/03864/suman1/COVID19/docked/6w9c/6w9cB/logs/*.log; do
   score=$(grep -m 1 '   1   ' $f | awk '{print $2}')
   echo $(basename $f .log),$score
   #mv $f 5r80_e/logs/part3/parsed/
done > scores6w9cB.csv
# sort
sort -t, -nk2 scores.csv > sorted_scores6w9cB.csv