
using Pkg
Pkg.add("Printf")
using Printf
include("../Methods/Gauss_Seidel.jl")
using .GaussSeidelModule

"""
*************************
        Questão 3
*************************
"""

b = [1.0, 4.0, 0.0]
m = [3.0 -1.0 1.0; 3.0 3.0 7.0; 3.0 6.0 2.0]

m[2,:], m[3,:] = m[3,:], m[2,:]
b[2], b[3] = b[3], b[2]

matriz_solucao = GaussSeidel(m, b, 0.001)

println(matriz_solucao)