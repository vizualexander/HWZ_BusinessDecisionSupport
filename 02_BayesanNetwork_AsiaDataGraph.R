# Beispiel Aufbau bayesian network
# 
# src: https://rdrr.io/cran/bnlearn/man/asia.html


library(bnlearn)
# load the data and build the correct network from the model string.
data(asia)
res = empty.graph(names(asia))
modelstring(res) = "[A][S][T|A][L|S][B|S][D|B:E][E|T:L][X|E]"
plot(res)





