#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 2:00:00
#SBATCH -J paper_5_merge_sort_bam
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load samtools

samtools merge /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/merged_tophat_out.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0092/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0093/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0094/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0095/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0096/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0097/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6066/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6067/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6069/accepted_hits.bam

samtools sort /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/merged_tophat_out.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/merged_sorted_tophat.bam



