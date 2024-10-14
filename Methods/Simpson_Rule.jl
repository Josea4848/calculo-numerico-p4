module simpsonRuleModule
export simpsonRule
using Pkg
Pkg.add("Printf")
using Printf
"""
function simpsonRule(x, y, a, b, n) 
  x - conjunto de valores do domínio da função
  y - conjunto de valores da imagem da função
  a - limite inferior
  b - limite superior
  n - quantidade de elementos
"""
function simpsonRule(x, y, a, b, n) 
  h = (b - a)/n
  somatorio = y[begin] + y[end]

  for i in 2:(length(y) - 1)
    if iseven(i)
      somatorio += 4*y[i]
    else
      somatorio += 2*y[i]
    end
  end

  return h/3*somatorio
end

end 