#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 2:00:00
#SBATCH -J paper_5_diff_exp
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load htseq

cd /home/osst6659/genome_analyses/analyses/10_references_ncbi/
htseq-count --format='bam' --order='name' --stranded='yes' --type='CDS' --idattr='gene_id' --samout='counts_92.sam' /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0092/accepted_hits92_sorted.bam /home/osst6659/genome_analyses/analyses/10_references_ncbi/ref_genome_annotation_altered.gtf > /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0092/counts_92.txt
htseq-count --format='bam' --order='name' --stranded='yes' --type='CDS' --idattr='gene_id' --samout='counts_93.sam' /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0093/accepted_hits93_sorted.bam /home/osst6659/genome_analyses/analyses/10_references_ncbi/ref_genome_annotation_altered.gtf > /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0093/counts_93.txt
htseq-count --format='bam' --order='name' --stranded='yes' --type='CDS' --idattr='gene_id' --samout='counts_96.sam' /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0096/accepted_hits96_sorted.bam /home/osst6659/genome_analyses/analyses/10_references_ncbi/ref_genome_annotation_altered.gtf > /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0096/counts_96.txt
htseq-count --format='bam' --order='name' --stranded='yes' --type='CDS' --idattr='gene_id' --samout='counts_97.sam' /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0097/accepted_hits97_sorted.bam /home/osst6659/genome_analyses/analyses/10_references_ncbi/ref_genome_annotation_altered.gtf > /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0097/counts_97.txt
