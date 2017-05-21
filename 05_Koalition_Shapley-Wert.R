######################################################################
# Berechnung Shapley Wert
# Tutorial: https://www.youtube.com/watch?v=EEMeos4p2PY
#
# Alexander Klein
# 21.05.2017
######################################################################

library(GameTheory)

Koalitionen <- c(100,100,100,700,500,500,900)
Lsg <- DefineGame(3,Koalitionen)
Namen <- c("a", "b", "c")
SHAPLEY <- ShapleyValue(Lsg,Namen)
summary(SHAPLEY)



