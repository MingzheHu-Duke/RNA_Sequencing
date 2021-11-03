#!/bin/bash

# Print the current working directory
pwd

# quality control
fastqc -o 02quality_control/ 01raw_data/*.fastq

# STAR allignment index
STAR --runThreadN 6 --runMode genomeGenerate --genomeDir 03STAR_genome --genomeFastaFiles 00ref/chr19.fa --sjdbGTFfile 00ref/UCSC_hg19_chr19_gene_annotation.gtf

# Star allignment output
STAR --runThreadN 5 --genomeDir 03STAR_genome --readFilesIn 01raw_data/adrenal_1.fastq 01raw_data/adrenal_2.fastq --outFileNamePrefix 04align_out/adrenal --outSAMtype BAM SortedByCoordinate --outBAMsortingThreadN 5 --quantMode TranscriptomeSAM GeneCounts
STAR --runThreadN 5 --genomeDir 03STAR_genome --readFilesIn 01raw_data/brain_1.fastq 01raw_data/brain_2.fastq --outFileNamePrefix 04align_out/brain --outSAMtype BAM SortedByCoordinate --outBAMsortingThreadN 5 --quantMode TranscriptomeSAM GeneCounts

# Sam tools
samtools view 04align_out/adrenalAligned.sortedByCoord.out.bam > 04align_out/adrenalAlignedSamView.txt
samtools view 04align_out/brainAligned.sortedByCoord.out.bam > 04align_out/brainAlignedSamView.txt

# RESEM allignment index
rsem-prepare-reference --gtf 00ref/UCSC_hg19_chr19_gene_annotation.gtf 00ref/chr19.fa 05RSEM/mingzhe_rsem

# RESEM allignment output
rsem-calculate-expression --paired-end --no-bam-output --alignments -p 5 -q 04align_out/adrenalAligned.toTranscriptome.out.bam 05RSEM/mingzhe_rsem 05RSEM_Out/adrenal_rsem
rsem-calculate-expression --paired-end --no-bam-output --alignments -p 5 -q 04align_out/brainAligned.toTranscriptome.out.bam 05RSEM/mingzhe_rsem 05RSEM_Out/brain_rsem

# Kallito
#kallisto quant -i 06kallisto/kallisto -o 06kallisto_Out/adrenal 01raw_data/adrenal_1.fastq 01raw_data/adrenal_2.fastq
#kallisto quant -i 06kallisto/kallisto -o 06kallisto_Out/heart 01raw_data/heart_1.fastq 01raw_data/heart_2.fastq
#kallisto quant -i 06kallisto/kallisto -o 06kallisto_Out/heart 01raw_data/brain_1.fastq 01raw_data/brain_2.fastq

# htseq
STAR --runThreadN 5 --genomeDir 03STAR_genome --readFilesIn 01raw_data/adrenal_1.fastq 01raw_data/adrenal_2.fastq --outFileNamePrefix 04align_out_Sam/adrenal
STAR --runThreadN 5 --genomeDir 03STAR_genome --readFilesIn 01raw_data/brain_1.fastq 01raw_data/brain_2.fastq --outFileNamePrefix 04align_out_Sam/brain
htseq-count -r pos -m union -f bam -s no -q 04align_out_Sam/adrenalAligned.out.sam 00ref/UCSC_hg19_chr19_gene_annotation.gtf> 07htseq/adrenal.counts
htseq-count -r pos -m union -f bam -s no -q 04align_out_Sam/brainAligned.out.sam 00ref/UCSC_hg19_chr19_gene_annotation.gtf> 07htseq/brain.counts

# Feature count
 featureCounts -p -a 00ref/UCSC_hg19_chr19_gene_annotation.gtf -o 08feature_count/out_counts.txt 04align_out/*Aligned.sortedByCoord.out.bam
