
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
b = [1.0, 0.0, 4.0]
m = [3.0 -1.0 1.0;3.0 6.0 2.0;3.0 3.0 7.0]

matriz_solucao = GaussSeidel(m, b, 0.001)

println(matriz_solucao)