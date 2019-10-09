RNA <- read.csv("~/Pulpit/analiza_statystyczna/RNA/counts_rna.csv")
DE <- read.csv("~/Pulpit/analiza_statystyczna/korelacja/nowa_korelacja/analiza/Najróżniej_ekspresjonujace_geny.csv")
RRBS <- read.csv("/home/natalia/Pulpit/analiza_statystyczna/próby_DMR/Diff_IZ.CV")

##################################### przygotowanie danych #####################
###################################
#geny różnie ekspresjonowane
DE_RNA <- merge(DE,RNA,by="Geneid",all.x=T)
DE_RNA <- DE_RNA[,-c(2:6)]

############ dla danych Diff_DMR
DE_RNA <- RNA
rownames(DE_RNA) <- DE_RNA[,2]
DE_RNA <- DE_RNA[,-1]
DE_RNA <- DE_RNA[,-1]
#############3
########## dla danych DE_RNA
rownames(DE_RNA) <- DE_RNA[,1]
DE_RNA <- DE_RNA[,-1]

###############
#normalizacja
counts <- as.matrix(DE_RNA)
counts <- apply(counts, c(1,2), function(x) log(x+10))
  
#grupowanie
RRBS <- RRBS[,-1]
RRBS = aggregate(RRBS,
               by = list(RRBS$Geneid),
              FUN = mean)
RRBS <- replace(RRBS, is.na(RRBS), 0)
  
#usuniecie kolumn gdzie jest tylko 0
RRBS <- RRBS[, colSums(RRBS != 0) > 0]
  
#połączenie DE_RNA z metylacją
rownames(RRBS) <- RRBS[,1]
RRBS <- RRBS[,-1]
methyl <- as.matrix(RRBS)
  
DE_METHYL <- merge(counts,methyl,by="row.names",all.x=TRUE)
DE_METHYL <- replace(DE_METHYL, is.na(DE_METHYL), 0)
  
#usuniecie wierszy, gdzie metylacja byla 0 w kazdej probie
cleaned_DE_METHYL = DE_METHYL[ rowSums(DE_METHYL[,c(59:115)])!=0, ] 
write.csv(cleaned_DE_METHYL,"~/Pulpit/metylacja_ekspresja.csv")
cleaned_DE_METHYL = read.csv("~/Pulpit/metylacja_ekspresja.csv", header=T, row.n
ames=2,sep=',')
cleaned_DE_METHYL<- cleaned_DE_METHYL[,-1]
  
library(corrplot)
library(RColorBrewer)
M <-cor(cleaned_DE_METHYL)
corrplot(M, type="upper", order="hclust",
         tl.pos = "td", tl.cex = 0.5,
         col=brewer.pal(n=10, name="RdYlBu"))
