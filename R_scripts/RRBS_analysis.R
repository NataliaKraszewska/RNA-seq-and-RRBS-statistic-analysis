directory <- getwd()
file.list = list("sample/SRR6188608_CV_19_trimmed_bismark_bt2.CpG_report.txt", "
sample/SRR6188609_CV_18_trimmed_bismark_bt2.CpG_report.txt", "sample/SRR6188610_
CV_17_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188611_CV_16_trimmed_bisma
rk_bt2.CpG_report.txt","sample/SRR6188612_CV_15_trimmed_bismark_bt2.CpG_report.t
xt","sample/SRR6188613_CV_14_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188
614_CV_13_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188615_CV_12_trimmed_b
ismark_bt2.CpG_report.txt","sample/SRR6188616_CV_11_trimmed_bismark_bt2.CpG_repo
rt.txt","sample/SRR6188617_CV_10_trimmed_bismark_bt2.CpG_report.txt","sample/SRR
6188618_CV_9_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188619_CV_8_trimmed
_bismark_bt2.CpG_report.txt","sample/SRR6188620_CV_7_trimmed_bismark_bt2.CpG_rep
ort.txt","sample/SRR6188621_CV_6_trimmed_bismark_bt2.CpG_report.txt","sample/SRR
6188622_CV_5_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188623_CV_4_trimmed
_bismark_bt2.CpG_report.txt","sample/SRR6188624_CV_3_trimmed_bismark_bt2.CpG_rep
ort.txt","sample/SRR6188625_CV_2_trimmed_bismark_bt2.CpG_report.txt","sample/SRR
6188626_CV_1_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188627_IZ_19_trimme
d_bismark_bt2.CpG_report.txt","sample/SRR6188628_IZ_18_trimmed_bismark_bt2.CpG_r
eport.txt","sample/SRR6188629_IZ_17_trimmed_bismark_bt2.CpG_report.txt","sample/
SRR6188630_IZ_16_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188631_IZ_15_tr
immed_bismark_bt2.CpG_report.txt","sample/SRR6188632_IZ_14_trimmed_bismark_bt2.C
pG_report.txt","sample/SRR6188633_IZ_13_trimmed_bismark_bt2.CpG_report.txt","sam
ple/SRR6188634_IZ_12_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188635_IZ_1
1_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188636_IZ_10_trimmed_bismark_b
t2.CpG_report.txt","sample/SRR6188637_IZ_9_trimmed_bismark_bt2.CpG_report.txt","
sample/SRR6188638_IZ_8_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188639_IZ
_7_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188640_IZ_6_trimmed_bismark_b
t2.CpG_report.txt","sample/SRR6188641_IZ_5_trimmed_bismark_bt2.CpG_report.txt","
sample/SRR6188642_IZ_4_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188643_IZ
_3_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188644_IZ_2_trimmed_bismark_b
t2.CpG_report.txt","sample/SRR6188645_IZ_1_trimmed_bismark_bt2.CpG_report.txt","
sample/SRR6188646_PP_19_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188647_P
P_18_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188648_PP_17_trimmed_bismar
k_bt2.CpG_report.txt","sample/SRR6188649_PP_16_trimmed_bismark_bt2.CpG_report.tx
t","sample/SRR6188650_PP_15_trimmed_bismark_bt2.CpG_report.txt","sample/SRR61886
51_PP_14_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188652_PP_13_trimmed_bi
smark_bt2.CpG_report.txt","sample/SRR6188653_PP_12_trimmed_bismark_bt2.CpG_repor
t.txt","sample/SRR6188654_PP_11_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6
188655_PP_10_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188656_PP_9_trimmed
_bismark_bt2.CpG_report.txt","sample/SRR6188657_PP_8_trimmed_bismark_bt2.CpG_rep
ort.txt","sample/SRR6188658_PP_7_trimmed_bismark_bt2.CpG_report.txt","sample/SRR
6188659_PP_6_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188660_PP_5_trimmed
_bismark_bt2.CpG_report.txt","sample/SRR6188661_PP_4_trimmed_bismark_bt2.CpG_rep
ort.txt","sample/SRR6188662_PP_3_trimmed_bismark_bt2.CpG_report.txt","sample/SRR
6188663_PP_2_trimmed_bismark_bt2.CpG_report.txt","sample/SRR6188664_PP_1_trimmed
_bismark_bt2.CpG_report.txt")

### ALL 
myobj = methRead(file.list, sample.id = list("CV_6610_EARLY","CV_6758_HO","CV_69
22_HO","CV_6967_STEA","CV_7012_NC","CV_7041_EARLY","CV_7137_STEA","CV_7157_EARLY
","CV_7172_STEA","CV_7173_NC","CV_7181_STEA","CV_7188_EARLY","CV_7194_NC","CV_72
13_HO","CV_7230_HO","CV_7251_STEA","CV_7252_HO","CV_7279_NC","CV_7344_EARLY","IZ
_6610_EARLY","IZ_6758_HO","IZ_6922_HO","IZ_6967_STEA","IZ_7012_NC","IZ_7041_EARL
Y","IZ_7137_STEA","IZ_7157_EARLY","IZ_7172_STEA","IZ_7173_NC","IZ_7181_STEA","IZ
_7188_EARLY","IZ_7194_NC","IZ_7213_HO","IZ_7230_HO","IZ_7251_STEA","IZ_7252_HO",
"IZ_7279_NC","IZ_7344_EARLY","PP_6610_EARLY","PP_6758_HO","PP_6922_HO","PP_6967_
STEA","PP_7012_NC","PP_7041_EARLY","PP_7137_STEA","PP_7157_EARLY","PP_7172_STEA"
,"PP_7173_NC","PP_7181_STEA","PP_7188_EARLY","PP_7194_NC","PP_7213_HO","PP_7230_
HO","PP_7251_STEA","PP_7252_HO","PP_7279_NC","PP_7344_EARLY"), assembly = "hg19"
, treatment = c(0,1,1,0,1,0,0,0,0,1,0,0,1,1,1,0,1,1,0,0,1,1,0,1,0,0,0,0,1,0,0,1,
1,1,0,1,1,0,0,1,1,0,1,0,0,0,0,1,0,0,1,1,1,0,1,1,0),context ="CpG",pipeline= "bis
markCytosineReport")
### CV
myobj = methRead(file.list, sample.id = list("CV_6610_EARLY","CV_6758_HO","CV_69
22_HO","CV_6967_STEA","CV_7012_NC","CV_7041_EARLY","CV_7137_STEA","CV_7157_EARLY
","CV_7172_STEA","CV_7173_NC","CV_7181_STEA","CV_7188_EARLY","CV_7194_NC","CV_72
13_HO","CV_7230_HO","CV_7251_STEA","CV_7252_HO","CV_7279_NC","CV_7344_EARLY","IZ
_6610_EARLY","IZ_6758_HO","IZ_6922_HO","IZ_6967_STEA","IZ_7012_NC","IZ_7041_EARL
Y","IZ_7137_STEA","IZ_7157_EARLY","IZ_7172_STEA","IZ_7173_NC","IZ_7181_STEA","IZ
_7188_EARLY","IZ_7194_NC","IZ_7213_HO","IZ_7230_HO","IZ_7251_STEA","IZ_7252_HO",
"IZ_7279_NC","IZ_7344_EARLY","PP_6610_EARLY","PP_6758_HO","PP_6922_HO","PP_6967_
STEA","PP_7012_NC","PP_7041_EARLY","PP_7137_STEA","PP_7157_EARLY","PP_7172_STEA"
,"PP_7173_NC","PP_7181_STEA","PP_7188_EARLY","PP_7194_NC","PP_7213_HO","PP_7230_
HO","PP_7251_STEA","PP_7252_HO","PP_7279_NC","PP_7344_EARLY"), assembly = "hg19"
, treatment = c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),context ="CpG",pipeline= "bis
markCytosineReport")
### PP
myobj = methRead(file.list, sample.id = list("CV_6610_EARLY","CV_6758_HO","CV_69
22_HO","CV_6967_STEA","CV_7012_NC","CV_7041_EARLY","CV_7137_STEA","CV_7157_EARLY
","CV_7172_STEA","CV_7173_NC","CV_7181_STEA","CV_7188_EARLY","CV_7194_NC","CV_72
13_HO","CV_7230_HO","CV_7251_STEA","CV_7252_HO","CV_7279_NC","CV_7344_EARLY","IZ
_6610_EARLY","IZ_6758_HO","IZ_6922_HO","IZ_6967_STEA","IZ_7012_NC","IZ_7041_EARL
Y","IZ_7137_STEA","IZ_7157_EARLY","IZ_7172_STEA","IZ_7173_NC","IZ_7181_STEA","IZ
_7188_EARLY","IZ_7194_NC","IZ_7213_HO","IZ_7230_HO","IZ_7251_STEA","IZ_7252_HO",
"IZ_7279_NC","IZ_7344_EARLY","PP_6610_EARLY","PP_6758_HO","PP_6922_HO","PP_6967_
STEA","PP_7012_NC","PP_7041_EARLY","PP_7137_STEA","PP_7157_EARLY","PP_7172_STEA"
,"PP_7173_NC","PP_7181_STEA","PP_7188_EARLY","PP_7194_NC","PP_7213_HO","PP_7230_
HO","PP_7251_STEA","PP_7252_HO","PP_7279_NC","PP_7344_EARLY"), assembly = "hg19"
, treatment = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1),context ="CpG",pipeline= "bis
markCytosineReport")
### IZ
myobj = methRead(file.list, sample.id = list("CV_6610_EARLY","CV_6758_HO","CV_69
22_HO","CV_6967_STEA","CV_7012_NC","CV_7041_EARLY","CV_7137_STEA","CV_7157_EARLY
","CV_7172_STEA","CV_7173_NC","CV_7181_STEA","CV_7188_EARLY","CV_7194_NC","CV_72
13_HO","CV_7230_HO","CV_7251_STEA","CV_7252_HO","CV_7279_NC","CV_7344_EARLY","IZ
_6610_EARLY","IZ_6758_HO","IZ_6922_HO","IZ_6967_STEA","IZ_7012_NC","IZ_7041_EARL
Y","IZ_7137_STEA","IZ_7157_EARLY","IZ_7172_STEA","IZ_7173_NC","IZ_7181_STEA","IZ
_7188_EARLY","IZ_7194_NC","IZ_7213_HO","IZ_7230_HO","IZ_7251_STEA","IZ_7252_HO",
"IZ_7279_NC","IZ_7344_EARLY","PP_6610_EARLY","PP_6758_HO","PP_6922_HO","PP_6967_
STEA","PP_7012_NC","PP_7041_EARLY","PP_7137_STEA","PP_7157_EARLY","PP_7172_STEA"
,"PP_7173_NC","PP_7181_STEA","PP_7188_EARLY","PP_7194_NC","PP_7213_HO","PP_7230_
HO","PP_7251_STEA","PP_7252_HO","PP_7279_NC","PP_7344_EARLY"), assembly = "hg19"
, treatment = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),context ="CpG",pipeline= "bis
markCytosineReport")

meth=unite(myobj, destrand=FALSE)
clusterSamples(meth, dist="correlation", method="ward", plot=TRUE)

par(mfrow = c(3, 5))
  
loop.vector <- 1:57
for (i in loop.vector) 
{
  getMethylationStats(myobj[[i]],plot=TRUE,both.strands=TRUE) 
  }

par(mfrow = c(3, 5))

loop.vector <- 1:57
for (i in loop.vector) 
{
  getCoverageStats(myobj[[i]],plot=TRUE,both.strands=FALSE)
  
}

# Identyfikacja DMR
tiles=tileMethylCounts(myobj,win.size=1000,step.size=500,both.strands=TRUE)
x=unite(tiles, destrand=FALSE)
DMR = calculateDiffMeth(x) 

# Identyfikacja różnie metylowanych DMR
Diff_DMR=getMethylDiff(DMR,difference=5,qvalue=0.01) 
  annotateWithGeneParts(as(Diff_DMR,"GRanges"),gene.obj)


#Identyfikacja hipometylowanych DMR, mniej metylowane niż grupa
Diff_DMR_hypo=getMethylDiff(DMR,difference=5,qvalue=0.01,type="hypo") 

#Identyfikacja hipermetylowanych DMR, bardziej metylowane niż grupa
Diff_DMR_hiper=getMethylDiff(DMR,difference=5,qvalue=0.01,type="hyper") 

write.csv(DMR,"DMR.csv")
write.table(DMR, file="DMR.txt",sep= "\t")
write.table(Diff_DMR, file="Diff_DMR.txt",sep= "\t")
write.table(Diff_DMR_hypo, file="Diff_DMR_hipo.txt",sep= "\t")
write.table(Diff_DMR_hiper, file="Diff_DMR_hiper.txt",sep= "\t")

### ALL
write.csv(Diff_DMR,"Diff_DMR.csv")
write.csv(Diff_DMR_hypo,"Diff_DMR_hipometylacja.csv")
write.csv(Diff_DMR_hiper,"Diff_DMR_hipermetylacja.csv")

### CV
write.csv(DMR,"DMR_CV.csv")
write.csv(Diff_DMR,"Diff_DMR_CV.csv")
write.csv(Diff_DMR_hypo,"Diff_DMR_hipometylacja_CV.csv")
write.csv(Diff_DMR_hiper,"Diff_DMR_hipermetylacja_CV.csv")
write.table(DMR, file="DMR_CV.txt",sep= "\t")
write.table(Diff_DMR, file="Diff_DMR_CV.txt",sep= "\t")
write.table(Diff_DMR_hypo, file="Diff_DMR_hipo_CV.txt",sep= "\t")
write.table(Diff_DMR_hiper, file="Diff_DMR_hiper_CV.txt",sep= "\t")


### IZ
write.csv(DMR,"DMR_IZ.csv")
write.table(DMR, file="DMR_IZ.txt",sep= "\t")
write.table(Diff_DMR, file="Diff_DMR_IZ.txt",sep= "\t")
write.table(Diff_DMR_hypo, file="Diff_DMR_hipo_IZ.txt",sep= "\t")
write.table(Diff_DMR_hiper, file="Diff_DMR_hiper_IZ.txt",sep= "\t")

write.csv(Diff_DMR,"Diff_DMR_IZ.csv")
write.csv(Diff_DMR_hypo,"Diff_DMR_hipometylacja_IZ.csv")
write.csv(Diff_DMR_hiper,"Diff_DMR_hipermetylacja_IZ.csv")

### PP
write.csv(DMR,"DMR_PP.csv")
write.table(DMR, file="DMR_PP.txt",sep= "\t")
write.table(Diff_DMR, file="Diff_DMR_PP.txt",sep= "\t")
write.table(Diff_DMR_hypo, file="Diff_DMR_hipo_PP.txt",sep= "\t")
write.table(Diff_DMR_hiper, file="Diff_DMR_hiper_PP.txt",sep= "\t")

write.csv(Diff_DMR,"Diff_DMR_PP.csv")
write.csv(Diff_DMR_hypo,"Diff_DMR_hipometylacja_PP.csv")
write.csv(Diff_DMR_hiper,"Diff_DMR_hipermetylacja_PP.csv")

#Hipermetylacja i hipometylacja na wykresie
val1 = table(Diff_DMR_hiper$chr)
val2 = table(Diff_DMR_hypo$chr)
count <- bind_rows(val1,val2)
matrix_count <- as.matrix(count)
matrix_count[is.na(matrix_count)] <- 0

colours <- c("red", "green")
barplot(matrix_count, main="Hipermetylowane i Hipometylowane DMR", ylab = "Liczb
a DMR", xlab="chromosomy", beside=TRUE,col=colours)
legend("topright", c("Hipo","Hiper"), cex=1.3, bty="n", fill=colours)

#Wykres przestawiający DMR dla każdego chromosomu
count <- table(DMR$chr)
barplot(count,main= "DMR",ylab="Liczba DMR", xlab ="chromosomy",beside=TRUE,col 
= "grey",cex.lab = 1.5, cex.main = 1.4,las=1, cex.names=.7)

