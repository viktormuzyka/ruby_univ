#1 + 1/3+ 1/3^2 + ... + 1/3^8
def second_task()
  step = 8
  result = 1.0
  for i in 1..step
    result += 1.0 / (3**i)
  end
  result
end

printf("Second task result: #{second_task()}\n")

def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end
#1 + x/1! + x^2/2! + x^3/3! + ... + x^n/n!
def third_task(n, x)
  if n < 1
    return -1
  end
  result = 1
  for i in 1..n
    f = factorial(i)
    result += (x ** i) / factorial(i)
  end
  result
end

printf("Enter n:")
n = gets.chomp.to_s.to_i
printf("Enter x:")
x = gets.chomp.to_s.to_f

printf("Third task result: #{third_task(n, x)}\n")