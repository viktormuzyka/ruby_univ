$input = 111000100111

def to_dec
  $input.to_s.reverse.chars.map.with_index do |digit, index|
    digit.to_i * 2**index
  end.sum
end

puts "#{$input.to_s} in binary is #{in_decimal} to dec"
