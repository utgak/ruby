arr = {}
summ = 0

loop do
  print "Input item(or stop): "
  item = gets.chomp
  break if item == "stop"
  print "Input cost: "
  cost = gets.to_f
  print "Input amount: "
  amount = gets.to_f
  arr[item] = { cost: cost, amount: amount, item_summ: cost * amount }
end

puts "Your cart:"
puts arr
arr.each  do |name, price|
    summ += price[:item_summ]
end

puts "Total summ is: $#{summ} "