#załadowanie danych RNA-seq
#mydat <- read.table("counts_rna.csv",sep=",",header=T,row.names=2)
RRBS <- read.table("DMR_2.csv",sep=",",header=T)

#grupowanie
RRBS <- RRBS[,-1]
RRBS = aggregate(RRBS,
                 by = list(RRBS$Geneid),
                 FUN = mean)
RRBS <- replace(RRBS, is.na(RRBS), 0)

#usuniecie kolumn gdzie jest tylko 0
RRBS <- RRBS[, colSums(RRBS != 0) > 0]
rownames(RRBS) <- RRBS[,1]
RRBS <- RRBS[,-1]
mydat <- RRBS

mydat <- mydat[,-c(0:1)]
#mydat <- mydat[1:100,]
mydat <- mydat[rowSums(mydat > 1) >=4,]
y <- as.matrix((mydat)) 

#normalizacja
library(edgeR)
sampleInfo <-read.csv("info.csv",header=TRUE, sep=',',row.names=1)
#sampleInfo<-read.csv("info_CV.csv",header=TRUE,sep=',',row.names=1)
y <- DGEList(counts = y, group=sampleInfo$condition)
y <- calcNormFactors(y)
z <- cpm(y, normalized.lib.size=TRUE) 

#identyfikujemy geny szumowe, tutaj wybieramy geny o najbardziej dynamicznej ekspresji, które mają nawiększą wariancję i ekspresję
z_var <- apply(z, 1, var)
z_mean <- apply(z, 1, mean)
plot(log2(z_mean), log2(z_var), pch='.')
abline(h=log2(50), col='red')
abline(v=log2(50), col='red')
text(x=13,y=23, labels="variance > 50 &\n mean > 50", col='red')
# to są geny najbardziej interesujące

z <- z[which(z_var > 50 & z_mean > 50),1:57]

#scalenie danych 
scaledata <- t(scale(t(z))) # Centers and scales data.

#grupujemy próbki aby zobaczyć wartości odstające 

hc <- hclust(as.dist(1-cor(scaledata, method="spearman")), method="complete") # Clusters columns by Spearman correlation.
plot(hc, hang = -1, cex = 0.6)
library("ape")
plot(as.phylo(hc), type = "unrooted", cex = 0.6,
     no.margin = TRUE)

TreeC = as.dendrogram(hc, method="average")
plot(TreeC,
     main = "Sample Clustering",
     ylab = "Height")


#oceniamy optymalną ilość klastrów ####

wss <- (nrow(scaledata)-1)*sum(apply(scaledata,2,var))
for (i in 2:20) wss[i] <- sum(kmeans(scaledata,
                                     centers=i)$withinss)
plot(1:20, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")

###############################################
set.seed(13)
gap <- clusGap(scaledata, kmeans, 20, B = 100, verbose = interactive())
plot(gap, main = "Gap statistic")
abline(v=which.max(gap$Tab[,3]), lty = 2)

## najbardziej optymalna ilość klastrów ## 
library(cluster)
sil <- rep(0, 20)
for(i in 2:20){
  k1to20 <- kmeans(scaledata, centers = i, nstart = 25, iter.max = 20)
  ss <- silhouette(k1to20$cluster, dist(scaledata))
  sil[i] <- mean(ss[, 3])
}

plot(1:20, sil, type = "b", pch = 19, xlab = "Number of clusters k", ylab="Average silhouette width")
abline(v = which.max(sil), lty = 2)
#######################################################
library(vegan)
fit <- cascadeKM(scaledata, 1, 20, iter = 100)
pdf( "klastry2.pdf", width = 11, height = 8 )
plot(fit, sortg = TRUE, grpmts.plot = TRUE)
calinski.best <- as.numeric(which.max(fit$results[2,]))
#########################################################
set.seed(20)
kClust <- kmeans(scaledata, centers=2, nstart = 1000, iter.max = 20)
kClusters <- kClust$cluster

clust.centroid = function(i, dat, clusters) {
  ind = (clusters == i)
  colMeans(dat[ind,])
}
kClustcentroids <- sapply(levels(factor(kClusters)), clust.centroid, scaledata, kClusters)

library(ggplot2)
library(reshape)
Kmolten <- melt(kClustcentroids)
colnames(Kmolten) <- c('sample','cluster','value')

par(cex.axis=0.6)
p2 <- ggplot(Kmolten, aes(x=sample,y=value, group=cluster, colour=as.factor(cluster))) + 
  geom_point() + 
  geom_line() +
  xlab("Time") +
  ylab("Expression") +
  labs(title= "Cluster Expression by Time",color = "Cluster")
p2 + theme(axis.text.x = element_text(angle = 90, hjust = 1))


