module trapeziumRuleModule
export trapeziumRule
using Pkg
Pkg.add("Printf")
using Printf

function trapeziumRule(y, a, b, n)
  h = (b - a)/n #passo h
  x = a + h #valor inicial para x
  somatorio = y(a)+ y(b) #valores dos extremos para o somatório
  
  @printf("x\t\t|y\t\n")
  @printf("%f\t|%f\t\n", a, y(a))

  for i in 1:n-1
    somatorio += 2*y(x)

    @printf("%f\t|%f\t\n", x, y(x))

    x += h  
  end 

  @printf("%f\t|%f\t\n", b, y(b))

  return h/2*somatorio
end

end 