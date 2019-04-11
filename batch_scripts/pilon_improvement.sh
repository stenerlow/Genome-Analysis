#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 00:30:00
#SBATCH -J pilon_improvement_oskar_stenerlov
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load Pilon/1.22

#My commands
pilon --genome /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/2019_04_04_scaffold_10_pacbio_assembly.contigs.fasta --bam /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/alignment_bwa.sorted.bam --output pilon_improved_assembly --outdir /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/ --diploid --threads 4

