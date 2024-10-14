
using Pkg
Pkg.add("Printf")
using Printf
include("../Methods/Gauss_Seidel.jl")
using .GaussSeidelModule

"""
*************************
        Questão 2
*************************
"""

m = [1 1/3 -1/9; 2/5 1 -3/5; -1/7 2/7 1]
c = [2/9; -1/5; -3/7]

matriz_solucao = GaussSeidel(m, c, 0.004)

println(matriz_solucao)