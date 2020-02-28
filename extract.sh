#/usr/bin/bash

#BSUB -P DMPMXHAAC
#BSUB -J extract_reads
#BSUB -e extract_reads.err.txt
#BSUB -o extract_reads.out.txt
#BSUB -n 2

#fastq_folder=/scratch/DMP/DUDMP/TRANSGEN/transgen-mdx/ngs/2.fastq/Pool_1343/
#extract_from=Undetermined_S0_R2_001.fastq.gz
#barcode=TGTCTGCT+CTGACACA
#sampleID=PAL024T1_F-T
#fastq=$(echo $sampleID'_S119_R2_001.fastq')

#echo $fastq_folder
#echo $extract_from
#echo $barcode
#echo $sampleID
#echo $fastq

#zcat $fastq_folder/$extract_from | grep -A 3 --no-group-separator $barcode > $fastq_folder/$fastq
#gzip $fastq_folder/$fastq


zcat Undetermined_S0_R2_001.fastq.gz | grep -A 3 --no-group-separator TGTCTGCT+CTGACACA > PAL024T1_F-T_S119_R2_001.fastq
gzip PAL024T1_F-T_S119_R2_001.fastq

