Bioinformatics-Final-Project:
Mapping Host Antiviral Response: Influenza A Infection in A549 Cells

This repository contains the workflow and analysis files for my Bioinformatics final project.  
The goal is to identify which gene programs most distinguish influenza A–infected A549 cells from mock controls, and evaluate whether program-level scores can reliably separate the two groups.

Repository Contents
- **scripts/** — Salmon index, quantification commands, and R scripts for tximport, DESeq2, and PCA.
- **results/** — PCA plot (draft report figure) and placeholders for future figures.
- **data/** — Empty directory with instructions for downloading FASTQs from SRA.
- **ai_usage.md** — Documentation describing how AI assistance was used in this project.
- **influenza_pipeline.ipynb** — Google Colab notebook containing the executed workflow.

Data Sources
- GEO: **GSE154596**
- SRA: **SRP272285**
- FASTQ downloads performed using `fastq-dump`.

Workflow Summary
1. Downloaded FASTQ files for 8 A549 RNA-seq samples.
2. Built Salmon transcriptome index using Ensembl GRCh38 cDNA.
3. Performed transcript quantification with Salmon.
4. Imported quantification results using **tximport**.
5. Constructed DESeq2 dataset, normalized counts, and generated a PCA plot.
6. Saved PCA plot for draft report.

To Reproduce
Clone this repo, follow the Salmon index/quant instructions in `scripts/`, and run the R script `deseq2_pca.R` or use the Colab notebook.
