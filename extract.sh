#/usr/bin/bash

#BSUB -P DMPMXHAAC
#BSUB -J extract_reads
#BSUB -e extract_reads.err.txt
#BSUB -o extract_reads.out.txt
#BSUB -n 2

fastq_folder=$1
extract_from=$2
barcode=$3
sampleID=$4

#echo $fastq_folder
#echo $extract_from
#echo $barcode
#echo $sampleID

zcat $fastq_folder/$extract_from | grep -A 3 --no-group-separator $barcode > $fastq_folder/$sampleID_S119_R2_001.fastq
gzip $fastq_folder/$sampleID.fastq
