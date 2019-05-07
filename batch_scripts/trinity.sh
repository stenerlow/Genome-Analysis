#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 10:00:00
#SBATCH -J paper_5_trinity
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load trinity

Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/merged_sorted_tophat.bam -genome_guided_max_intron 10000 --max_memory 20G --CPU 6 --output /home/osst6659/genome_analyses/analyses/07_trinity_assembly/trinity_output --full_cleanup


