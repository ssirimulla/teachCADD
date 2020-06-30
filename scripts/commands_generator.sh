#!/bin/sh
for f in /scratch/02875/docking/ligands/ZINC-in-trials/1/*.pdbqt; do
         outputfile="/scratch/03864/suman1/newclass/output/$(basename -- ${f%.*}).docked"
        logfile="/scratch/03864/suman1/newclass/logs/$(basename -- ${f%.*}).log"
        echo /scratch/03864/suman1/COVID19/qvina/bin/qvina02 --receptor ./6w9c-A.pdbqt --ligand "$f" --center_x -14 --center_y 46 --center_z -39 --size_x 24 --size_y 24 --size_z 24 --out $outputfile --log $logfile
done

