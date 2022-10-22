# frozen_string_literal: true

require './task31'

obj1 = Prog.new
obj2 = Prog.new

p obj1.minmax(0..1) { |x| (x - 1) / (x + 2) }
p obj2.minmax(-1..1) { |x| Math.sin(x / 2 - 1) }
