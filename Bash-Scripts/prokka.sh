#!/usr/bin/env bash

#defining variables for the input file
ACCESSIONS_FILE=$(cat accessions.txt)

#defining a variable for the fasta directory
FASTQ_DIR="/home/user/location"	  #edit the user and location based on your preference
 
for sample in $ACCESSIONS_FILE;
do

prokka --cpus 4 --kingdom Bacteria --prefix ${sample} --locustag ${sample} ${FASTQ_DIR}/${sample}.fasta

done
