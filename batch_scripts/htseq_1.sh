#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J paper_5_maker_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load maker

htseq-count /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0097/accepted_hits97_sorted.sam
