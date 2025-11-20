%%R
# Install if needed
if (!require("BiocManager")) install.packages("BiocManager", repos="https://cloud.r-project.org")
BiocManager::install(c("tximport", "DESeq2"), ask=FALSE)

library(tximport)
library(DESeq2)
library(ggplot2)

# Names of samples
samples <- c(
  "SRR12485106","SRR12485107","SRR12485108","SRR12485109",
  "SRR12485110","SRR12485111","SRR12485112","SRR12485113"
)

# Path to quant.sf files
files <- file.path(getwd(), paste0(samples, "_quant"), "quant.sf")
names(files) <- samples

# Import quantification
txi <- tximport(files, type="salmon", txOut=TRUE)

# Sample metadata (first 4 mock, last 4 infected)
coldata <- data.frame(
  row.names = samples,
  condition = factor(c(rep("mock", 4), rep("infected", 4)))
)

# Build DESeq2 object
dds <- DESeqDataSetFromTximport(txi, colData=coldata, design = ~ condition)

# Normalization + VST
dds <- DESeq(dds)
vsd <- vst(dds)

# PCA plot
p <- plotPCA(vsd, intgroup="condition") +
    ggtitle("PCA of A549 Influenza vs Mock") +
    theme_bw(base_size = 14)

# Save PCA plot
ggsave("PCA_plot.png", plot = p, width = 6, height = 5)

p
