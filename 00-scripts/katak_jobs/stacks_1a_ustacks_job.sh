#!/bin/bash
#SBATCH -J "ustacks"
#SBATCH -o log_%j
#SBATCH -c 10
#SBATCH -p medium
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=YOUREMAIL
#SBATCH --time=7-00:00
#SBATCH --mem=30G

module load stacks/1.48

# Move to directory where job was submitted
cd $SLURM_SUBMIT_DIR

# Find stacks for each sample
./00-scripts/stacks1_1a_ustacks_parallel.sh
