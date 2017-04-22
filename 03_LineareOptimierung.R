
# Set up problem: maximize
# 1x1 + 2x2 subject to
# 4x1 + 1x2 <= 32
# 1x1 + 3x2 <= 23
library(lpSolve)
f.obj <- c(1, 2)
f.con <- matrix (c(4,1,1,3), nrow=2, byrow=TRUE)
f.dir <- c("<=", "<=")
f.rhs <- c(32,23)
#
# Now run.
#
lp ("max", f.obj, f.con, f.dir, f.rhs)
## Output is: Success: the objective function is 17.54545
lp ("max", f.obj, f.con, f.dir, f.rhs)$solution
## Output is: [1] 6.636364 5.454545


