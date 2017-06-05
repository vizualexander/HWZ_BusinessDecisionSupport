######################################################################
# Übung zur Azswertung von Fragebögen anhand dummy Werte
# kat-kat: Kader, Hochschulabschluss(HSAbschluss)
# 
# 05.06.2017
# Alexander Klein
######################################################################

##################
# Datengenerierung
##################
n <- 100
Kader <- sample(c("ja","nein"), n, replace=TRUE, prob=c(0.3,0.7))
dat <- data.frame(Kader)
dat$HSAbschluss <- ifelse(Kader == "ja",ifelse(runif(n)<0.6,"M","F"),ifelse(runif(n)<0.7,"F","M"))
head(dat)
##################
# Prozente berechnen und Graphik erstellen
##################
Tab <- table(dat$HSAbschluss,dat$Kader) # 2x2 Tabelle
Proz <- prop.table(Tab, 1) # Prozentwerte
require(ggplot2)
g <- ggplot(dat, aes(HSAbschluss))
g + geom_bar(aes(fill = Kader), position = "fill")
##################
# Tests für statistische Signifikanz
##################
chisq.test(Tab, correct=FALSE) # Chi^2-Test
fisher.test(Tab, alternative = "less") # Fisher-Exact-Test
# prop.test(c(10,16), c(52,48)) # Test für Proportionen