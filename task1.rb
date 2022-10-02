eps = 10**-4
r = gets.chomp.to_i
exs = Math::PI * r**2
s = 1
n = 1

while exs - s > eps do
  s = r**2 * n * Math.sin(2 * Math::PI / n) / 2
  n += 1
end

puts s
