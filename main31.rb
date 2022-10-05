require './task31'

obj1, obj2 = Prog.new, Prog.new

obj1.minmax(0..1) { |x| (x - 1) / (x + 2) }
obj2.minmax(-1..1) { |x| Math.sin(x / 2 - 1) }
