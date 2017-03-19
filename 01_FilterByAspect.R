#############
# Excercise day 2:
# Autokauf
#############

Preis <- runif(100,19000,31000)
Erstzulassung <- runif(100,2012,2016)
Leistung <- runif(100,100,170)
myCardata <- data.frame(Preis,Erstzulassung,Leistung)
rownames(myCardata) <- paste0("Alt ",seq(1:100))
myCardata

# Filter: Preise zwischen 20'000 und 31'000
filteredCarData <- subset(myCardata, Preis > 20000 & Preis < 31000) 
# Filter: Erstzulassung zwischen 2013 und 2016
filteredCarData <- subset(myCardata, Erstzulassung > 2013 & Erstzulassung < 2016)
filteredCarData



