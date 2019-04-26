#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J paper_5_sort_bam_transcriptome
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools

module load samtools

samtools /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0092/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0092/accepted_hits92_sorted.bam
samtools /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0093/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0093/accepted_hits93_sorted.bam
samtools /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0094/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0094/accepted_hits94_sorted.bam
samtools /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0095/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0095/accepted_hits95_sorted.bam
samtools /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0096/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0096/accepted_hits96_sorted.bam
samtools /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0097/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0097/accepted_hits97_sorted.bam
samtools /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6066/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6066/accepted_hits66_sorted.bam
samtools /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6067/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6067/accepted_hits67_sorted.bam
samtools /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6069/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6069/accepted_hits69_sorted.bam