#!/bin/bash
#PBS -l mem=2gb
#PBS -l walltime=02:00:00,ncpus=1
#PBS -N LDSC_munge
#PBS -e ${dirR}/LDSC.e
#PBS -e ${dirR}/LDSC.o

module load ldsc/20190815

#file1="$1"
#dirR="$2"


munge_sumstats.py --sumstats ${dirR}/${file1} --out ${dirR}/${file1}.munge --merge-alleles /mnt/backedup/home/nathanI/scriptsL/LD_score/w_hm3.snplist

