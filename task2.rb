eps = 10**-4
r = gets.chomp.to_i
exs = Math::PI * r**2

s = (1..10000).to_a.collect { |x| r**2 * x * Math.sin(2 * Math::PI / x) / 2 }.find { |y| exs - y < eps }

puts s