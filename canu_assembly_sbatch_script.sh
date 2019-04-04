#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 18:00:00
#SBATCH -J paper_5_pacbio_assembly_oskar_stenerlov
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load canu/1.7

#My commands
canu -p scaffold_10_pacbio_assembly -d /home/osst6659/genome_analyses/analyses/01_pacbio_assembly genomeSize=36M -pacbio-raw /home/osst6659/genome_analyses/data/raw_data/pacbio/SRR6037732_scaffold_10.fq.gz

