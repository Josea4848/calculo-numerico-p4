
using Pkg
Pkg.add("Printf")
using Printf
include("../Methods/Gauss_Seidel_order4.jl")
using .GaussSeidel4Module

"""
*************************
        Questão 4
*************************
"""

c = [504.0, 1970.0, 970.0,601.0]
m = [3.0 4.0 7.0 20.0; 20.0 25.0 40.0 50.0; 10.0 15.0 20.0 22.0; 10.0 8.0 10.0 15.0]

m[2,:], m[3,:] = m[3,:],m[2,:]
c[2],c[3] = c[3],c[2]

m[1,:], m[4,:] = m[4,:],m[1,:]
c[1],c[4] = c[4],c[1]

matriz_solucao = GaussSeidel4(m, c, 0.01)

println(matriz_solucao)