class Array
	def to_hash
		hash = Hash.new(Array.new)
		for i in self 
			hash[i.to_s.size] += [i]
		end
		 puts hash
	end	
end
