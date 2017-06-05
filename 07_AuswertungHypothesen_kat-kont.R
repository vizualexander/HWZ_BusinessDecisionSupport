######################################################################
# Übung zur Azswertung von Fragebögen anhand dummy Werte
# kat-kont: Geschlecht, Ferientage
# 
# 05.06.2017
# Alexander Klein
######################################################################

##################
# Datengenerierung head(dat,10)
##################
n <- 100
Geschlecht <- sample(c("ja","nein"), n, replace=TRUE, prob=c(0.3,0.7))
dat <- data.frame(Geschlecht)
dat$Zeit <- ifelse(Geschlecht == "ja",runif(n,10,40),runif(n,15,50))
##################
# Mittelwerte berechnen und Plot
##################
m <- aggregate(dat$Zeit ~ dat$Geschlecht, FUN=mean)
heights <- m[[2]]
heights
barplot(heights, main= "Ferientage", xlab="Geschlecht",
        col=c("blue"), names=m[[1]],cex.names=0.8)
##################
# Tests für statistische Signifikanz
##################
fit <- aov(Zeit ~ Geschlecht, data=dat) # Varianzanalyse
summary(fit)