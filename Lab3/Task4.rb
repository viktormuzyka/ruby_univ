$eps = 0.001

def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end
#(n-1)!/(n+1)! = 1 / n(n+1)
def func_for_first_series(n)
  (1.0 / (n*(n+1.0))) ** (n * (n + 1.0))
end

def first_series
  n = 2
  result = func_for_first_series(n)
  begin
    n += 1
    puts result
    previous = result
    result += func_for_first_series(n)
  end while result - previous >= $eps
  result
end

def func_for_second_series(n,x)
  ((-1)**(n-1.0) * (x ** (2*n-1.0)) / factorial((2*n-1.0))).to_f
end

def second_series(x)
  n = 1
  result = func_for_second_series(n,x)
  begin
    n += 1
    previous = result
    result += func_for_second_series(n,x)
  end while result - previous >= $eps
  result
end

def func_for_third_series(n)
  ((n*factorial(2.0*n-1.0))/(factorial(3.0*n)*(4.0**(2.0*n))*factorial(2.0*n+1.0))).to_f
end

def third_series
  n = 1
  result = func_for_third_series(n)
  begin
    n+=1
    previous = result
    result += func_for_third_series(n)
  end while result - previous >= $eps
  result
end

printf("First series: #{first_series}\n")

$x = 0.1
printf("\nSecond series (sin #{$x}): #{second_series($x)}\nWhen Math.sin(#{$x}) returns #{Math.sin($x)}\n")

printf("\nThird series: #{third_series}\n")