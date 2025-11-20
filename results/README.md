## Results

### PCA of A549 Influenza vs Mock Samples

The figure below shows the principal component analysis (PCA) generated from variance-stabilized counts using DESeq2. The PCA demonstrates clear separation between influenza-infected A549 samples and mock controls, indicating that infection status is a dominant source of transcriptional variation.

**PCA Plot:**

![PCA Plot](results/PCA_plot.png)

**How this figure was generated:**

- Salmon quantification results (`quant.sf` files) were imported with **tximport**.
- Normalization and variance stabilizing transformation (VST) were performed using **DESeq2**.
- PCA was produced with `plotPCA()` using the `condition` grouping.
- The full script used to generate this figure is available at:
  `scripts/deseq2_pca.R`
