#if (!requireNamespace("BiocManager", quietly = TRUE))
#  install.packages("BiocManager")
#BiocManager::install("DESeq2")

#browseVignettes("DESeq2")

#install.packages("tidyverse")
#install.packages('pheatmap')

library(DESeq2)
library(tidyverse)
library(pheatmap)
library(gplots)
library(RColorBrewer)
library(genefilter)

setwd("C:\\Users\\Oskar\\Documents\\Civilingenjören\\Genomanalys\\rna_counts")

# Read in files
rna_0092 <- read.delim("C:/Users/Oskar/Documents/Civilingenjören/Genomanalys/rna_counts/counts_92.txt", header=FALSE)
rna_0093 <- read.delim("C:/Users/Oskar/Documents/Civilingenjören/Genomanalys/rna_counts/counts_93.txt", header=FALSE)
rna_0096 <- read.delim("C:/Users/Oskar/Documents/Civilingenjören/Genomanalys/rna_counts/counts_96.txt", header=FALSE)
rna_0097 <- read.delim("C:/Users/Oskar/Documents/Civilingenjören/Genomanalys/rna_counts/counts_97.txt", header=FALSE)

# Merged files into a count matrix
rna_merged <- merge(rna_0092,rna_0093,by="V1")
rna_merged <- merge(rna_merged,rna_0096,by="V1")
rna_merged <- merge(rna_merged,rna_0097,by="V1")

# Attach labels and remove unecessary lines
names(rna_merged) <- c("V1","leaf","root","stem","aril")
rownames(rna_merged)<-rna_merged[,1]
rna_merged <- rna_merged[-c(1,2,3,4,5),]
rna_merged<-rna_merged[,-1]

# Create fruit and non-fruit conditions used as metadata in DESeq2
condition <- c("nonfruit", "nonfruit", "nonfruit", "fruit")
metadata <- data.frame(row.names=colnames(rna_merged), condition)

# Perfrom differential expression
dds <- DESeqDataSetFromMatrix(countData=rna_merged, colData=metadata, design= ~ condition)
dds <- DESeq(dds)



# Order result based on adjusted p-value. Wriste result to csv files
head(res)
summary(res)
resOrdered <- res[order(res$padj),]  #order by padj(adjusted p-value), small padj indicates large difference
sub_res <- subset(resOrdered, padj <0.01)
resOrdered=as.data.frame(resOrdered)
head(resOrdered)
resOrdered=na.omit(resOrdered)  #delete NA values
write.csv(as.data.frame(resOrdered),file="resOrdered_1.csv")
write.csv(as.data.frame(sub_res),file="resOrdered_sub_1.csv")

# Perform PCA to determine if there is difference in expression in fruit vs. non-fruit, plot result
rld<-rlog(dds)
#or:  rld <- rlogTransformation(dds)
colData(dds)
plotPCA(rld,intgroup=c("condition","sizeFactor"))


#MA
res <- results(dds)
#res <- tbl_df(res)
plotMA(res)
plotMA(sub_res)

# Produve a heatmap of the result
select<-order(rowMeans(counts(dds,normalized=TRUE)),decreasing = TRUE)[1:1046] 
nt<-normTransform(dds)
log2.norm.counts<-assay(nt)[select,]
df<-as.data.frame(colData(dds))
pheatmap(log2.norm.counts,cluster_rows = TRUE,show_rownames = FALSE,cluster_cols = TRUE,annotation_col = df)

# Single out top 10 genes displaying the largest variance. Plot a heatmap of the result
topVarGenes <- head( order( rowVars( assay(rld) ), decreasing=TRUE ), 35 )
heatmap.2( assay(rld)[ topVarGenes, ], scale="row",
           trace="none", dendrogram="column",
           col = colorRampPalette( rev(brewer.pal(9, "RdBu")) )(255), margins=c(1,8))


