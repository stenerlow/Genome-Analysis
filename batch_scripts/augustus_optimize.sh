#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 15:00:00
#SBATCH -J paper_5_maker_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user oskar.stenerlow@gmail.com

#Load modules
module load bioinfo-tools
module load maker

cd /home/osst6659/genome_analyses/analyses/08_genome_annotation/maker_with_original_step_1/
optimize_augustus.pl --species=arabidopsis augustus.gbk.train --cpus=4 --AUGUSTUS_CONFIG_PATH=/home/osst6659/genome_analyses/analyses/08_genome_annotation/maker_with_original_step_1/config/
