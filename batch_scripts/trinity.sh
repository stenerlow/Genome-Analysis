#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 15:00:00
#SBATCH -J paper_5_trinity
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load trinity

Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0092/accepted_hits92_sorted.bam -genome_guided_max_intron 10000 --max_memory 10G --CPU 6 --output /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0092/trinity_output
Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0093/accepted_hits93_sorted.bam -genome_guided_max_intron 10000 --max_memory 10G --CPU 6 --output /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0093/trinity_output
Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0094/accepted_hits94_sorted.bam -genome_guided_max_intron 10000 --max_memory 10G --CPU 6 --output /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0094/trinity_output
Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0095/accepted_hits95_sorted.bam -genome_guided_max_intron 10000 --max_memory 10G --CPU 6 --output /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0095/trinity_output
Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0096/accepted_hits96_sorted.bam -genome_guided_max_intron 10000 --max_memory 10G --CPU 6 --output /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0096/trinity_output
Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0097/accepted_hits97_sorted.bam -genome_guided_max_intron 10000 --max_memory 10G --CPU 6 --output /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0097/trinity_output
Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6066/accepted_hits66_sorted.bam -genome_guided_max_intron 10000 --max_memory 10G --CPU 6 --output /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6066/trinity_output
Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6067/accepted_hits67_sorted.bam -genome_guided_max_intron 10000 --max_memory 10G --CPU 6 --output /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6067/trinity_output
Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6069/accepted_hits69_sorted.bam -genome_guided_max_intron 10000 --max_memory 10G --CPU 6 --output /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_6069/trinity_output



