def minmax b
	min, max = 1000000, -1000000

	b.step(0.01).each do |a|
		temp = yield a.to_f

		if temp > max
			max = temp
		end

		if temp < min
			min = temp
		end
	end

	puts min, max
end

minmax(0..1) { |x| (x - 1) / (x + 2) }
minmax(-1..1) { |x| Math.sin(x / 2 - 1) }
