#GO analysis graphing

library(ggplot2)
setwd("~/Documents/UW/nemhauser_lab/GA/RNA-Seq/Sequencing_Data/dge.all/GO_terms")
dat <- read.csv("Up_panther.txt", sep="\t")
dat <- dat[order(dat$GAHACR_UP_fold_Enrichment),]

#dat_bp <- subset(dat, source == "GO:BP")
plot1 <- ggplot(dat, aes(x=GAHACR_UP_fold_Enrichment, y=GOBP))+
  geom_point(aes(size= GAHACR_UP_79, color = GAHACR_UP_FDR, stroke = 1)) +
  #scale_x_continuous(breaks=c(0, 20, 40, 60, 80))+
  ylab('GO term (Biological Process') + 
  xlab('Fold Enrichment') + 
  theme_classic(base_family = 'Arial Bold', base_size = 10)+
  theme(text = element_text(size = 5), 
        panel.grid.major.x = element_blank(), 
        panel.grid.major.y = element_line(size=.4, color="gray", linetype = "dashed")) +
  scale_color_gradient(low="cyan", high="blue")
plot1
  
plot2 <- ggplot(dat, aes(x= GAHACR_UP_fold_Enrichment, y=reorder(GOBP, GAHACR_UP_fold_Enrichment)))+
  geom_point(aes(size= GAHACR_UP_79, color = GAHACR_UP_FDR, stroke = 1, alpha=0.8)) +
  ylab('GO term (Biological Process') + 
  xlab('Fold Enrichment') + 
  theme_classic(base_family = 'Arial Bold', base_size = 6)+
  theme(panel.grid.major.x = element_blank(), 
        panel.grid.major.y = element_line(size=.4, color="gray", linetype = "dashed")) +
  scale_color_gradient(low="cyan", high="blue")
plot2


pdf(file = "~/Documents/UW/nemhauser_lab/GA/RNA-Seq/Sequencing_Data/dge.all/GO_terms/Up_v2_GO.pdf",   # The directory you want to save the file in
    width = 4.7, # The width of the plot in inches
    height = 4) # The height of the plot in inches

# Step 2: Create the plot with R code
ggplot(dat, aes(x= GAHACR_UP_fold_Enrichment, y=reorder(GOBP, GAHACR_UP_fold_Enrichment)))+
  geom_point(aes(size= GAHACR_UP_79, color = GAHACR_UP_FDR, stroke = 1, alpha=0.8)) +
  ylab('GO term (Biological Process') + 
  xlab('Fold Enrichment') + 
  theme_classic(base_size = 6)+
  theme(panel.grid.major.x = element_blank(), 
        panel.grid.major.y = element_line(size=.4, color="gray", linetype = "dashed")) +
  scale_color_gradient(low="cyan", high="blue")

# Step 3: Run dev.off() to create the file!
dev.off()



dat2 <- read.csv("All_Degs_panther.txt", sep="\t")
dat2 <- dat2[order(dat2$GAHACR_UP_fold_Enrichment),]
plot3 <- ggplot(dat2, aes(x= GAHACR_UP_fold_Enrichment, y=reorder(GOBP, GAHACR_UP_fold_Enrichment)))+
  geom_point(aes(size= GAHACR_UP_79, color = GAHACR_UP_FDR, stroke = 1, alpha=0.8)) +
  ylab('GO term (Biological Process') + 
  xlab('Fold Enrichment') + 
  theme_classic(base_family = 'Arial Bold', base_size = 6)+
  theme(panel.grid.major.x = element_blank(), 
        panel.grid.major.y = element_line(size=.4, color="gray", linetype = "dashed")) +
  scale_color_gradient(low="cyan", high="blue")
plot3

dat_down <- read.csv("Down_panther.txt", sep="\t")
dat_down <- dat_down[order(dat_down$GAHACR_UP_fold_Enrichment),]
plot4 <- ggplot(dat_down, aes(x= GAHACR_UP_fold_Enrichment, y=reorder(GOBP, GAHACR_UP_fold_Enrichment)))+
  geom_point(aes(size= GAHACR_UP_79, color = GAHACR_UP_FDR, stroke = 1, alpha=0.8)) +
  ylab('GO term (Biological Process') + 
  xlab('Fold Enrichment') + 
  theme_classic(base_size = 6)+
  theme(panel.grid.major.x = element_blank(), 
        panel.grid.major.y = element_line(size=.4, color="gray", linetype = "dashed")) +
  scale_color_gradient(low="cyan", high="blue")
plot4

pdf(file = "~/Documents/UW/nemhauser_lab/GA/RNA-Seq/Sequencing_Data/dge.all/GO_terms/Down_GO.pdf",   # The directory you want to save the file in
    width = 5, # The width of the plot in inches
    height = 4) # The height of the plot in inches

# Step 2: Create the plot with R code
ggplot(dat_down, aes(x= GAHACR_UP_fold_Enrichment, y=reorder(GOBP, GAHACR_UP_fold_Enrichment)))+
  geom_point(aes(size= GAHACR_UP_79, color = GAHACR_UP_FDR, stroke = 1, alpha=0.8)) +
  ylab('GO term (Biological Process') + 
  xlab('Fold Enrichment') + 
  theme_classic(base_size = 6)+
  theme(panel.grid.major.x = element_blank(), 
        panel.grid.major.y = element_line(size=.4, color="gray", linetype = "dashed")) +
  scale_color_gradient(low="cyan", high="blue")

# Step 3: Run dev.off() to create the file!
dev.off()
