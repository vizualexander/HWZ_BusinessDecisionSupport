###########################################################
# Beispiel Six-Sigma 
#
# 21.05.2017
###########################################################

#install.packages("qcc")
library(qcc)
Wert <- runif(9*12,12,20)
Sample <- rep(c(1:12),9)
Sample <- sort(Sample)
dat <- data.frame(Wert,Sample)
#dat <- dat[order(dat$Sample),] 
dat

attach(dat)
dim(dat)
head(dat)
nrow(dat)
Wert <- qcc.groups(Wert, Sample)
dim(Wert)
obj <- qcc(Wert[1:12,], type="xbar")
summary(obj)


