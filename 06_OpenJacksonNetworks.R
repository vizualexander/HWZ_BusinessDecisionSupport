########################################################################
# Diskrete Ereignisse in Netzwerken (Open Jackson Networks)
# Beispiel: Anrufe Call Center
#
# 17.05.2017
# Alexander Klein
########################################################################

#install.packages("queueing")
library(queueing)

## create the nodes
n1 <- NewInput.MM1(lambda=18,mu=20,n=0)
n2 <- NewInput.MM1(lambda=0, mu=12, n=0)
n3 <- NewInput.MM1(lambda=0, mu=13, n=0)
n4 <- NewInput.MM1(lambda=0, mu=11, n=0)
n5 <- NewInput.MM1(lambda=0, mu=9,  n=0)
m  <- c(0, 0.3, 0.7, 0, 0, 
        0, 0, 0, 0, 0,
        0, 0, 0, 0.5, 0.5,
        0, 0, 0, 0, 0,
        0, 0, 0, 0, 0)

# definition of the transition probabilities
prob <- matrix(data=m, nrow=5, ncol=5, byrow=TRUE)

# Deinition of the new input
ojn <- NewInput.OJN(prob, n1, n2, n3, n4, n5)

# Build the models
o_ojn <- QueueingModel(ojn)
Throughput(o_ojn)
summary(o_ojn)


