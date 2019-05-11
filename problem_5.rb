def lcm
	c_l = 11
	(11..20).each do |el|
		c_l = c_l.lcm(el)
	end
	c_l
end

puts lcm
