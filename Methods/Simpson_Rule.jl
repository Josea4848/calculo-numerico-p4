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

  @printf("x\t\t|y\t\t|c_i\n")
  @printf("%f\t|%f\t\n", x[begin], y[begin])

  for i in 2:(length(y) - 1)
    @printf("%f\t|%f\t", x[i], y[i])
    
    if iseven(i)
      somatorio += 4*y[i]
      @printf("4\n", )
    else
      somatorio += 2*y[i]
      @printf("2\n", )
    end

    
  end

  @printf("%f\t|%f\t\n", x[end], y[end])

  return h/3*somatorio
end

end 