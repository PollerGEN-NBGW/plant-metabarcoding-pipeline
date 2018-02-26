#!/bin/bash --login
#SBATCH --job-name=blast_its
#SBATCH --output=blast_its_%j.out
#SBATCH --error=blast_its_%j.err
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --time=3-00:00
#SBATCH --mem-per-cpu=8000

module load python/2.7.5-numpy-1.8.0

mkdir /home/hpcw0257_hpcw0301/nbgw_workflow/blast-its/blast_summaries/

python /home/hpcw0257_hpcw0301/nbgw_workflow/blast-its/BLAST-Tools/bin/blast_summary.py
