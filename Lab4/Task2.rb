require 'matrix'

def get_random_vector(n)
  Vector[Array.new(n) { rand(10) }]
end

def task_sixth
  vector_x = get_random_vector(8)
  vector_y = get_random_vector(8)

  product = 0
  vector_x.each_with_index do |_, i| # i == 0
    vector_x[i].each_index do |j|    # j == 0..4
      product += vector_x[i][j] * vector_y[i][j]
    end
  end

  printf("Sixth task (vector inner mult.):\nVector X: #{vector_x}
Vector Y: #{vector_y}
Product: #{product}\n\n")
end

task_sixth
