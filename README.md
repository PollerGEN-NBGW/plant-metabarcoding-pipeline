## Description

Modified version of the plant metabarcoding pipeline found at https://github.com/colford/nbgw-plant-illumina-pipeline. This pipeline allows for two marker genes to be sequenced together and seperated using primer sequences.

Primers splitting is based on a script taken from https://github.com/Y-Lammers/Split_on_Primer.

## Dependencies

The script is built to run on an HPC cluster with a 'slurm' job management system.

The script expects the following to be avaliable on the HPC:

    Python
    FastQValidator
    FastQC/0.11.2
    Java
    Trimmomatic/0.33
    FLASH/1.2.11
    fastx_toolkit/0.0.13.2
    BLAST+/2.2.31

## How to run

1. Copy demultiplexed fastq.gz files into a directory.

2. Run the script using python. The script is menu driven, so using the options provided first input the location of the \*fastq.gz files, a directory containing adaptors (in fasta format), and a file containing the primer sequences (in .csv format; example below). 

3. Select 'Set-up pipeline in current project director'. The script will now format the working directory for analysis.

4. Generate slurm scripts in order using the numbered options. In order for the script to find file names, the prior script must be run prior to generating the next (configuration options will be saved each time you exit the script). 

# Example primer file
rbcL,ATGTCACCACAAACAGAGACTAAAGC
ITS2,ATGCGATACTTGGTGTGAAT

