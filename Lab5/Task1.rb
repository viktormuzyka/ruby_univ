#Variant 8

def prm(a, b, n, h = 1.0 * (b - a) / n)
  sum = 0.0
  x = a + h - h / 2
  loop do
    y = yield(x)
    sum += h * y
    x += h
    break if x > b
  end
  sum
end

def trp(a, b, function, n)
  h = 1.0 * (b - a) / n

  current_argument = a + h
  sum = method(function).call(a) / 2 + method(function).call(b) / 2

  while current_argument <= b - h do
    sum += method(function).call(current_argument)
    current_argument += h
  end

  h * sum
end

def f1(x)
  Math.asin(x**(0.5))/(x*(1-x))**(0.5)
end

def f2(x)
  Math.atan(x/2+Math::PI/2)**3
end

a = 0.2
b = 0.3
$n = 1e+5

printf("First function integration using rectangles:\na = #{a} b = #{b}\nIntegrate(f1) = #{prm(a, b, $n){|x| f1(x)}}\n\n")

a = 0.0
b = Math::PI / 8

printf("Second function integration using trapezium:\na = #{a} b = #{b}\nIntegrate(f2) = #{trp(a, b, :f2, $n)}\n")