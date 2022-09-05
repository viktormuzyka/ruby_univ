print "Enter t:"
t = gets.chomp.to_s.to_f

print "Enter phi:"
phi = gets.chomp.to_s.to_f

print "Enter x:"
x = gets.chomp.to_s.to_f

F = Math.tan((Math::E**t+3**phi)/Math.sqrt((t*t+2).abs))-(Math.cos(phi)**3+2.8*10**(-3.4) + x) / ((Math.sin(Math::PI-4)**3+1.2)**(0.2))

printf "F = %f" % [F]


