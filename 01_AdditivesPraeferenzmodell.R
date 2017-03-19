#############
# Folie 31
#############
n <- 10000
Happy <- runif(n,0,10)
Preis <- runif(n,25,30)
Erstzulassung <- runif(n,2015,2016)
Leistung <- runif(n,150,170)
Kilometer <- runif(n,5,20)

dataCar <- data.frame(Happy,Preis,Erstzulassung,Leistung,Kilometer)
head(dataCar)

fitAdditiv <- lm(Happy ~ Preis + Erstzulassung + Leistung + Kilometer, data=dataCar)
summary(fitAdditiv)



fitInteraktion <- lm(Happy ~ Preis * Erstzulassung * Leistung * Kilometer, data=dataCar)
summary(fitInteraktion)


# Vorhersage von Happy für zwei neue Wohnungen
preds <- data.frame(Preis=c(8,15),Erstzulassung=c(5,20),Lage=c(1,25))
preds
predict(fitAdditiv, newdata = preds, interval="prediction") # Vorhersagen
