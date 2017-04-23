# Beispiel mit "lpSolve", auf Grundlage Vorlesung Tag 3
# 22.04.2017
# Alexander Klein

library(lpSolve)
f.obj <- c(1,1,1)
f.names <- c("AAA", "BBB", "CCC")
f.con <- matrix (c(0.98,0.79,1.19,180,12,9,322,632,1011,189,450,214), nrow=4, byrow=TRUE )
f.dir <- c("<=", ">=", ">=", ">=")
f.rhs <- c(4500,230000,3200000,1200000)

lp ("min", f.obj, f.con, f.dir, f.rhs)

lp ("min", f.obj, f.con, f.dir, f.rhs)$solution

