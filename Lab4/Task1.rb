def get_random_array()
  my_array = Array.new(24) { rand(-10..10) }
end

def task_sixth
  my_array = get_random_array()
  printf("Array: #{my_array}\n")

  sum_even_negative = 0
  sum_odd_positive = 0
  my_array.each_with_index do |x, i|
    if x < 0 && i % 2 == 0
      sum_even_negative += x
    elsif x > 0 && i % 2 == 1
      sum_odd_positive += x
    end
  end

  printf("Sixth task:\nsum_even_negative: #{sum_even_negative}
sum_odd_positive: #{sum_odd_positive}\n")
end

task_sixth
