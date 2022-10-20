# puts "Enter a"
# a = gets.chomp.to_f
# puts "Enter b"
# b = gets.chomp.to_f
# puts "Enter c"
# c = gets.chomp.to_f
#
# puts "Enter x_right"
# x_right = gets.chomp.to_f
# puts "Enter x_left"
# x_left = gets.chomp.to_f
# puts "Enter dx"
# dx = gets.chomp.to_f

# for test
a = 3.2
b = 4.1
c = 3.3
x_right = 0
x_left = 10
dx = 1


results = {}

(x_right..x_left).step(dx).each do |x|
  if c < 0 && b != 0
    results[x] = a*x^2 + b*x^2
  elsif c > 0 && b == 0
    if x + c == 0
      puts "Division by zero in 2 block!"
    else
      results[x] = (x + a) / (x + c)
    end
  else
    if c == 0
      puts "Division by zero in 3 block!"
    else
      results[x] = x / c
    end
  end
end

puts "Our value: ", (a.truncate & b.truncate) | (a.truncate | c.truncate)

if (a.truncate & b.truncate) | (a.truncate | c.truncate) != 0
  results.each do |key, value|
    print key, " : ", value, "\n"
  end
else
  results.each do |key, value|
    print key, " : ", value.to_i, "\n"
  end
end
