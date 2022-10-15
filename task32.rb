# frozen_string_literal: true

# main class
class Prog
  def initialize
    @min = 1_000_000
    @max = -1_000_000
  end

  def minmax(func, elem)
    elem.step(0.01).each do |a|
      temp = func.call a.to_f

      @max = temp if temp > @max
      @min = temp if temp < @min
    end

    puts @min, @max
  end
end
