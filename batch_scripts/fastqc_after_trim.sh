#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 1:00:00
#SBATCH -J paper_5_fastqc
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load FastQC

fastqc /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040095_scaffold_10_trimmed_* -o /home/osst6659/genome_analyses/analyses/06_fastqc_after_trimming -t 2
