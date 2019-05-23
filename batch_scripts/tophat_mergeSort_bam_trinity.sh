#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J paper_5_tophat_merge_bam_sort
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load samtools
module load bowtie2
module load tophat

#My commands

tophat -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0092 -p 4 /home/osst6659/genome_analyses/analyses/10_references_ncbi/bowtie_output_index /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_10.2.fastq.gz
tophat -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0093 -p 4 /home/osst6659/genome_analyses/analyses/10_references_ncbi/bowtie_output_index /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_10.2.fastq.gz
tophat -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0094 -p 4 /home/osst6659/genome_analyses/analyses/10_references_ncbi/bowtie_output_index /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_10.2.fastq.gz
tophat -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0096 -p 4 /home/osst6659/genome_analyses/analyses/10_references_ncbi/bowtie_output_index /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_10.2.fastq.gz
tophat -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0097 -p 4 /home/osst6659/genome_analyses/analyses/10_references_ncbi/bowtie_output_index /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040097_scaffold_10.2.fastq.gz
tophat -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_6066 -p 4 /home/osst6659/genome_analyses/analyses/10_references_ncbi/bowtie_output_index /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156066_scaffold_10.2.fastq.gz
tophat -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_6067 -p 4 /home/osst6659/genome_analyses/analyses/10_references_ncbi/bowtie_output_index /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156067_scaffold_10.2.fastq.gz
tophat -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_6069 -p 4 /home/osst6659/genome_analyses/analyses/10_references_ncbi/bowtie_output_index /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6156069_scaffold_10.2.fastq.gz


samtools sort /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0092/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0092/accepted_hits92_sorted.bam
samtools sort /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0093/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0093/accepted_hits93_sorted.bam
samtools sort /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0094/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0094/accepted_hits94_sorted.bam
samtools sort /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0095/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0095/accepted_hits95_sorted.bam
samtools sort /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0096/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0096/accepted_hits96_sorted.bam
samtools sort /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0097/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_0097/accepted_hits97_sorted.bam
samtools sort /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_6066/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_6066/accepted_hits66_sorted.bam
samtools sort /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_6067/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_6067/accepted_hits67_sorted.bam
samtools sort /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_6069/accepted_hits.bam -o /home/osst6659/genome_analyses/analyses/10_references_ncbi/SCAFFOLD_6069/accepted_hits69_sorted.bam


