class Array
	def reverse_iterate 
		a = self.length - 1
		0.upto(a) do|i| yield self[a - i] end
	end
end