print "Input a: "
a = gets.chomp().to_i
print "Input b: "
b = gets.chomp().to_i
print "Input c: "
c = gets.chomp().to_i
d = b*b - 4*a*c
puts("D = " + d.to_s)
if d > 0
    puts("x1 = " + ( (-b + Math.sqrt(d)) / (2*a) ).to_s)
    puts("x2 = " + ( (-b - Math.sqrt(d)) / (2*a) ).to_s)
elsif d  == 0
    puts("x = " + ( -b / (2*a) ).to_s)
elsif d < 0
    puts("No roots")
end