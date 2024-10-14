using Pkg
Pkg.add("Printf")
using Printf
include("../Methods/Simpson_Rule.jl")
using .simpsonRuleModule

"""
*************************
        Questão 1
*************************
"""
# Array dos tempos (t) em segundos
t = [0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5]

# Array das velocidades (v) em m/s
v = [0, 4.67, 7.34, 8.86, 9.73, 10.22, 10.51, 10.67, 10.76, 10.81, 10.81]

@printf("Distância aproximada percorrida pelo corredor durante os 5s: %fm\n", simpsonRule(t, v, 0, 5, 10))
