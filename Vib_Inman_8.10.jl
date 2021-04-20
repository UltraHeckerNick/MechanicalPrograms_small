using LinearAlgebra
using Roots
K = [2 -1; -1 1]
M = [4 1;1 2]
a = (2*7e10)
b = (2700/12)
c(w) =  det((a*K)-((w^2)*(b*M)))
find_zeros(c,0,1000000)