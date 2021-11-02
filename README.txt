../RNA_Sequencing/
├── 00ref
│   ├── UCSC_hg19_chr19_gene_annotation.gtf
│   └── chr19.fa
├── 01raw_data
│   ├── adrenal_1.fastq
│   ├── adrenal_2.fastq
│   ├── brain_1.fastq
│   └── brain_2.fastq
├── 02quality_control
│   ├── adrenal_1_fastqc.html
│   ├── adrenal_1_fastqc.zip
│   ├── adrenal_2_fastqc.html
│   ├── adrenal_2_fastqc.zip
│   ├── brain_1_fastqc.html
│   ├── brain_1_fastqc.zip
│   ├── brain_2_fastqc.html
│   └── brain_2_fastqc.zip
├── 03STAR_genome
│   ├── Log.out
│   ├── chrLength.txt
│   ├── chrName.txt
│   ├── chrNameLength.txt
│   ├── chrStart.txt
│   ├── exonGeTrInfo.tab
│   ├── exonInfo.tab
│   ├── geneInfo.tab
│   ├── genomeParameters.txt
│   ├── sjdbInfo.txt
│   ├── sjdbList.fromGTF.out.tab
│   ├── sjdbList.out.tab
│   └── transcriptInfo.tab
├── 04align_out
│   ├── adrenalAligned.sortedByCoord.out.bam
│   ├── adrenalAligned.toTranscriptome.out.bam
│   ├── adrenalAlignedSamView.txt
│   ├── adrenalLog.final.out
│   ├── adrenalLog.out
│   ├── adrenalLog.progress.out
│   ├── adrenalReadsPerGene.out.tab
│   ├── adrenalSJ.out.tab
│   ├── brainAligned.sortedByCoord.out.bam
│   ├── brainAligned.toTranscriptome.out.bam
│   ├── brainAlignedSamView.txt
│   ├── brainLog.final.out
│   ├── brainLog.out
│   ├── brainLog.progress.out
│   ├── brainReadsPerGene.out.tab
│   └── brainSJ.out.tab
├── 04align_out_Sam
│   ├── adrenalAligned.out.sam
│   ├── adrenalLog.final.out
│   ├── adrenalLog.out
│   ├── adrenalLog.progress.out
│   ├── adrenalSJ.out.tab
│   ├── brainAligned.out.sam
│   ├── brainLog.final.out
│   ├── brainLog.out
│   ├── brainLog.progress.out
│   └── brainSJ.out.tab
├── 05RSEM
│   ├── mingzhe_rsem.chrlist
│   ├── mingzhe_rsem.grp
│   ├── mingzhe_rsem.idx.fa
│   ├── mingzhe_rsem.n2g.idx.fa
│   ├── mingzhe_rsem.seq
│   ├── mingzhe_rsem.ti
│   └── mingzhe_rsem.transcripts.fa
├── 05RSEM_Out
│   ├── adrenal_rsem.genes.results
│   ├── adrenal_rsem.isoforms.results
│   ├── adrenal_rsem.stat
│   │   ├── adrenal_rsem.cnt
│   │   ├── adrenal_rsem.model
│   │   └── adrenal_rsem.theta
│   ├── brain_rsem.genes.results
│   ├── brain_rsem.isoforms.results
│   ├── brain_rsem.stat
│   │   ├── brain_rsem.cnt
│   │   ├── brain_rsem.model
│   │   └── brain_rsem.theta
│   └── out_matrix
├── 06kallisto
│   └── kallisto
├── 06kallisto_Out
│   ├── adrenal
│   │   ├── abundance.h5
│   │   ├── abundance.tsv
│   │   └── run_info.json
│   └── heart
│       ├── abundance.h5
│       ├── abundance.tsv
│       └── run_info.json
├── 07htseq
│   ├── adrenal.counts
│   └── brain.counts
├── 08feature_count
│   ├── out_counts.txt
│   └── out_counts.txt.summary
├── 09deseq_out
│   ├── adrenal
│   │   ├── genes.fpkm_tracking
│   │   ├── isoforms.fpkm_tracking
│   │   ├── skipped.gtf
│   │   └── transcripts.gtf
│   ├── assembly.txt
│   ├── brain
│   │   ├── genes.fpkm_tracking
│   │   ├── isoforms.fpkm_tracking
│   │   ├── skipped.gtf
│   │   └── transcripts.gtf
│   └── merged_asm
│       ├── logs
│       │   └── run.log
│       └── tmp
├── Aligned.out.sam
├── LICENSE
├── Log.progress.out
├── README.txt
└── documents
    └── Lab_RNASEQ.pdf

23 directories, 97 files
