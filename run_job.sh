#!/bin/bash 
#SBATCH --partition=gpu-single
#SBATCH --gres=gpu:1
#SBATCH --job-name=naim_spambase
#SBATCH --time=34:00:00
#SBATCH --mem=50gb
#SBATCH --output=LOGS//%x.%N.%A.%a.out
#SBATCH --error=LOGS//%x.%N.%A.%a.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=matus.dominika@gmail.com

source /home/matusd/.conda/bin/activate naim

python main.py -m experiment=classification_with_missing_generation experiment/databases@db=spambase