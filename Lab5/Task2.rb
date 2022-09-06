#Variant 6

def series(x, n, eps = 1e-4)
  summand = yield(x, 0)
  previous_summand = summand
  sum = summand

  (1..n).each do |i|
    summand = yield(x, i)
    sum += summand

    if (summand - previous_summand).abs < eps
      break
    end

    previous_summand = summand
  end
  sum
end

def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end

def a_n(x, i)
  Math.cos(Math::PI*i/4) / factorial(i)
end

arg = Math::PI/5 #work [PI/5..4PI/5]
n = 58 #work in [13..58]
printf("Series evaluation with x = #{arg} and n = #{n}\n#{series(arg, n) { |x, i| a_n(x, i)} }\n")