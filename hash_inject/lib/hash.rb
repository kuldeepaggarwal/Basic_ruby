class Array
	def to_hash
		hash = Array.new(Array.new());
		hash1 = [["x", 5], ["abc", "def", 234]]
		for i in self
			hash[i.to_s.size].push(i)
		end
		 puts hash1[0]
	end	
end
