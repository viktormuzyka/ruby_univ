$N = 10
$c = 3
$PI = Math::PI

def func_y(x)
  numerator = ($N**(0.25)+x**0.25)**2 + (x**(2/$N)+$N**(2/$N)) + 1
  denominator = 2 * (x - $N)
  numerator / denominator + ($N*x-x**$c) / (x**2+x+1)
end

def func_z(x)
  numerator = (Math.tan(3*x)) * (1 - (1/Math.tan(3*x)) ** 2 )
  denominator = ((Math.tan(3*x))**2-1) * ( 1/Math.tan(2*x) - Math.tan(2*$PI*x/5) ** (1/$N) )
  numerator / denominator
end

def first_task
  step = ($N - 1).to_f / ($N + $c)
  arguments_array = (1..$N).step(step).to_a
  arguments_array.each { |argument| printf("x = #{'%.2f' % argument}, y = #{func_y(argument)}\n") }
end

def second_task
  step = ($PI - $PI / $N).to_f / (1.5 * $N  + $c)
  arguments_array = ($PI / $N..$PI).step(step).to_a
  arguments_array.each { |argument| printf("x = #{'%.2f' % argument}, z = #{'%.2f' % func_z(argument)}\n") }
end

def third_task
  step = ($c - 2).to_f / (2 * $N)
  arguments_array = (2..$c).step(step).to_a
  arguments_array.each do |argument|
    output = "x = #{'%.2f' % argument}, "
    case argument
    when 3...$N
      output += "f = #{func_y(argument)}\n"
    when ($N + 1)...($N * 2)
      output += "f = #{'%.2f' % func_z(argument)}\n"
    else
      output += "f = #{func_y(argument) + func_z(argument)}\n"
    end
    print(output)
  end
end

print("First task result:\n")
first_task
print("\nSecond task result:\n")
second_task
print("\nThird task result:\n")
third_task