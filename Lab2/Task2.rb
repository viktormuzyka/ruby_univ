$P = 3
$t = 16
$r = 8

def diapason
  Integer(($P**$r)*(1-$P**(-$t)))
end

puts "Diapason P = #{$P}, t = #{$t}, r = #{$r}\nis #{diapason}"