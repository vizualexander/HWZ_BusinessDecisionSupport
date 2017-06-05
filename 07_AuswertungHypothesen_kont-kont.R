######################################################################
# Übung zur Azswertung von Fragebögen anhand dummy Werte
# kont-kont: Überstunden, Einkommen
# 
# 05.06.2017
# Alexander Klein
######################################################################

n <- 100
Ueberstunden <- rnorm(n,40,15) # Schnitt=40, Stad-Abw=15
Einkommen <- 1.5*Ueberstunden+80*runif(n)
dat <- data.frame(Ueberstunden,Einkommen)
head(dat)
boxplot(Ueberstunden, Einkommen,col="purple", names=c(colnames(dat)))
# install.packages("psych")
library(psych)
pairs.panels(dat, main="Simple Scatterplot Matrix")
plot(Ueberstunden,Einkommen)
fit <- lm(Einkommen ~ Ueberstunden)
abline(fit)
summary(fit)