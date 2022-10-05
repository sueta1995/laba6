require './task32'

obj1, obj2 = Prog.new, Prog.new

func1 = ->(x) { (x - 1) / (x + 2) }
func2 = ->(x) { Math.sin(x / 2 - 1 ) }

obj1.minmax func1, 0..1
obj2.minmax func2, -1..1
