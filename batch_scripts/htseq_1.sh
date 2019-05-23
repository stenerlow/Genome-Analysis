#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J paper_5_diff_exp
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load htseq

cd /home/osst6659/genome_analyses/analyses/10_references_ncbi/

htseq-count -f bam -i ID /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0097/accepted_hits92_sorted.bam \
/home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0097/accepted_hits93_sorted.bam \
/home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0097/accepted_hits96_sorted.bam \
/home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0097/accepted_hits97_sorted.bam /home/osst6659/genome_analyses/analyses/10_references_ncbi/ref_genome_annotation.gff3
