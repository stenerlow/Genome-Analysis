#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 0:30:00
#SBATCH -J paper_5_maker_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load trimmomatic

cd /home/osst6659/genome_analyses/analyses/03_transcriptome_trimming

java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic-0.36.jar PE /proj/g2019003/nobackup/private/5_Tean_Teh_2017/transcriptome/untrimmed/SRR6040095_scaffold_10.1.fastq.gz /proj/g2019003/nobackup/private/5_Tean_Teh_2017/transcriptome/untrimmed/SRR6040095_scaffold_10.2.fastq.gz -baseout SRR6040095_scaffold_10_trimmed LEADING:36 TRAILING:36
