def minmax func, b
	min, max = 1000000, -1000000

	b.step(0.01).each do |a|
		temp = func.call a.to_f

		if temp > max
			max = temp
		end

		if temp < min
			min = temp
		end
	end

	puts min, max
end

func1 = ->(x) { (x - 1) / (x + 2) }
func2 = ->(x) { Math.sin(x / 2 - 1 ) }

minmax func1, 0..1
minmax func2, -1..1