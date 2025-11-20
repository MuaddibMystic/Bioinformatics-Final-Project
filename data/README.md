# Data

This directory does not contain raw FASTQ files or Salmon quantification outputs, as these files are too large for GitHub and exceed typical repository storage limits. Instead, this README provides clear instructions on how the data used in this project can be downloaded and reproduced.

---

## Data Sources

All sequencing data used in this analysis comes from a publicly available influenza A infection experiment:

- **GEO Accession:** GSE154596  
- **SRA Project:** SRP272285  

Eight A549 RNA-seq samples were included:

SRR12485106
SRR12485107
SRR12485108
SRR12485109
SRR12485110
SRR12485111
SRR12485112
SRR12485113


These represent 4 mock-treated control samples and 4 influenza A–infected samples.

---

## Downloading FASTQ Files

Use **SRA Toolkit** to download the original FASTQ files:

for id in SRR12485106 SRR12485107 SRR12485108 SRR12485109 SRR12485110 SRR12485111 SRR12485112 SRR12485113
do
    fastq-dump --split-files $id
done

These runs are single-end, so only _1.fastq files will be produced:

SRR12485106_1.fastq
SRR12485107_1.fastq
...
SRR12485113_1.fastq

## Quantification Directory Structure

After performing Salmon quantification, your working directory should include one folder per sample:
SRR12485106_quant/quant.sf
SRR12485107_quant/quant.sf
SRR12485108_quant/quant.sf
SRR12485109_quant/quant.sf
SRR12485110_quant/quant.sf
SRR12485111_quant/quant.sf
SRR12485112_quant/quant.sf
SRR12485113_quant/quant.sf

These quant.sf files are imported into tximport and later processed with DESeq2.

## Note:
Raw FASTQ data and quantification files are intentionally excluded from this repository to keep the project lightweight and reproducible without exceeding storage limits. Follow the instructions above to reconstruct the dataset exactly as used in the analysis.
