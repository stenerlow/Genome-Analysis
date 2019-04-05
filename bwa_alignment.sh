#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 5:00:00
#SBATCH -J oskar_stenerlov_bwa_alignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar_stenerlow@gmail.com

# Load modules
module load bioinfo-tools
module load bwa/0.7.17

# Your commands
bwa mem /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/2019_04_04_scaffold_10_pacbio_assembly.contigs.fasta /home/osst6659/genome_analyses/data/raw_data/illumina/SRR6058604_scaffold_10.1P.fastq.gz /home/osst6659/genome_analyses/data/raw_data/illumina/SRR6058604_scaffold_10.2P.fastq.gz > /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/alignment_bwa.sam