#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 30:00:00
#SBATCH -J paper_5_tophat_merge_bam_sort_trinity
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load samtools
module load bowtie2
module load tophat/2.1.1
module load trinity

#My commands

tophat -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0092 -p 4 /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040092_scaffold_10.2.fastq.gz

tophat -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0093 -p 4 /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040093_scaffold_10.2.fastq.gz

tophat -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0094 -p 4 /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040094_scaffold_10.2.fastq.gz

tophat -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0096 -p 4 /home/osst6659/genome_analyses/analyses/02_pacbio_illumina_alignment/Pilon_improvement/genome_index_base /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_10.1.fastq.gz /home/osst6659/genome_analyses/data/raw_data/transcriptome/trimmed/SRR6040096_scaffold_10.2.fastq.gz


samtools merge /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/merged_tophat_out.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0092/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0093/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0094/accepted_hits.bam \
/home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/SCAFFOLD_0096/accepted_hits.bam

samtools sort /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/merged_tophat_out.bam -o /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/merged_sorted_tophat.bam

Trinity --genome_guided_bam /home/osst6659/genome_analyses/analyses/04_transcriptome_assembly/merged_sorted_tophat.bam -genome_guided_max_intron 10000 --max_memory 20G --CPU 4 --output /home/osst6659/genome_analyses/analyses/07_trinity_assembly/trinity_output