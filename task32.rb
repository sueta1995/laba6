class Prog
  def initialize
    @min, @max = 1000000, -1000000
  end

  def minmax func, b
    b.step(0.01).each do |a|
      temp = func.call a.to_f
  
      if temp > @max
        @max = temp
      end
  
      if temp < @min
        @min = temp
      end
    end
  
    puts @min, @max
  end
end
