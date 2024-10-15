module GaussSeidel4Module
export GaussSeidel4
using Pkg
Pkg.add("Printf")
using Printf

function GaussSeidel4(m, c, erro)
  x_k = [0.0, 0.0, 0.0,0.0] #palpite inicial para xk

  @printf("x1\t\t|x2\t\t|x3\t\t|x4\t\t|erro1\t\t|erro2\t\t|erro3\t\t|erro4\n")
  diff_matrix = [0.0,0.0,0.0,0.0]

  while(true) 
    x_k_next = copy(x_k)
    
    x_k_next[1] = (c[1] - m[1, 2]*x_k_next[2] - m[1, 3]*x_k_next[3] -m[1,4]*x_k_next[4])/m[1,1]
    x_k_next[2] = (c[2] - m[2, 1]*x_k_next[1] - m[2, 3]*x_k_next[3] -m[2,4]*x_k_next[4])/m[2,2]
    x_k_next[3] = (c[3] - m[3, 1]*x_k_next[1] - m[3, 2]*x_k_next[2] -m[3,4]*x_k_next[4])/m[3,3]
    x_k_next[4] = (c[4] - m[4, 1]*x_k_next[1] - m[4, 2]*x_k_next[2] - m[4, 3]*x_k_next[3])/m[4,4]
    
    @printf("%f\t|%f\t|%f\t|%f",x_k[1], x_k[2],x_k[3],x_k[4])
    @printf("\t%f\t|%f\t|%f\t|%f\n", diff_matrix[1], diff_matrix[2], diff_matrix[3], diff_matrix[4])

    diff_matrix = abs.(x_k_next .- x_k)  # Cálculo da diferença

    if all(diff_matrix .<= erro)  # Verificação de erro
      @printf("%f\t|%f\t|%f\t|%f\t",x_k_next[1], x_k_next[2],x_k_next[3],x_k_next[4])
      @printf("%f\t|%f\t|%f\t|%f\n", diff_matrix[1], diff_matrix[2], diff_matrix[3], diff_matrix[4])
      return x_k_next
    end

    x_k[1] = x_k_next[1]  
    x_k[2] = x_k_next[2]
    x_k[3] = x_k_next[3]
    x_k[4] = x_k_next[4]
  end
end

end 