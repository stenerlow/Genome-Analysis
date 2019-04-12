#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J paper_5_pacbio_assembly_oskar_stenerlov
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load tophat/2.1.1
module load bowtie/2.3.4.3
module load samtools

#My commands

tophat /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_10.2.fastq.gz -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly -p 2 

tophat /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_10.2.fastq.gz -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly -p 2

tophat /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_10.2.fastq.gz -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly -p 2

tophat /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040095_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040095_scaffold_10.2.fastq.gz -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly -p 2

tophat /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_10.2.fastq.gz -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly -p 2

tophat /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_10.2.fastq.gz -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly -p 2

tophat /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_10.2.fastq.gz -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly -p 2

tophat /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_10.2.fastq.gz -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly -p 2

tophat /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_10.2.fastq.gz -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly -p 2

#tophat /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base \
#[/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_10.1.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_10.1.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_10.1.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040095_scaffold_10.1.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_10.1.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_10.1.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_10.1.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_10.2.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_10.1.fastq.gz] \
#[/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_10.2.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_10.2.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_10.2.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040095_scaffold_10.2.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_10.2.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_10.2.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_10.2.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_10.2.fastq.gz, \
#/home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_10.2.fastq.gz] -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly -p 2

 
 

