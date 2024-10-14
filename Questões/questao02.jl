using Pkg
Pkg.add("Printf")
using Printf
include("../Methods/Trapezium_Rule.jl")
using .trapeziumRuleModule

"""
*************************
        Questão 2
*************************
"""
p(h) = 5*h^2 + 3*h + 2

@printf("Pressão total estimada: %f\n", trapeziumRule(p, 0, 10, 5))
