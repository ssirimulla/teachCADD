#!/bin/bash
#-------------------------------------------------------
#
#         <------ Setup Parameters ------>
#
# N: Number of nodes
# n: Number of MPI task requested.
# NHOSTS: Usually the same as N
# PPN: Process per node.
#
# For chantis: N: 1, n: 56 <56 for small tasks>, NHOSTS:1, PPN: <?>
# Stampede: N: <# of Nodes>, n: <68 per node>, NHOSTS: <# of Nodes> , PPN: <?>



#SBATCH -J parse
#SBATCH -N 10 -n 240
#SBATCH -p development
#SBATCH -o parse.o%j
#SBATCH -e parse.err%j
#SBATCH -t 02:00:00
#SBATCH --mail-user=ssirimulla@utep.edu
#SBATCH --mail-type=begin   # email me when the job starts
#SBATCH --mail-type=end     # email me when the job finishes
#          <------ Account String ----->
# <--- (Use this ONLY if you have MULTIPLE accounts) --->
#SBATCH -A DrugDiscoveryPortal
#------------------------------------------------------

module load launcher

export LAUNCHER_PLUGIN_DIR=$LAUNCHER_DIR/plugins
export LAUNCHER_RMI=SLURM
export LAUNCHER_JOB_FILE=commandsvs.sh
export LAUNCHER_WORKDIR=$PWD
export LAUNCHER_NHOSTS=10
export LAUNCHER_PPN=24
export LAUNCHER_SCHED=block
export LAUNCHER_BIND=1

$LAUNCHER_DIR/paramrun