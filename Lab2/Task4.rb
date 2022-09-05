$input = 161

def to_binary
  binary = []
  temp = $input
  while temp > 0
    binary << temp % 2
    temp /= 2
  end
  binary.reverse.join
end

puts "#{$input} in dec is #{to_binary} in bin"