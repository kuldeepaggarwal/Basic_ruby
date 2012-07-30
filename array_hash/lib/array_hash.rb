class Array
  def to_hash(length)
    array2d = Array.new{Array.new}
    hash = Hash.new(Array.new)
    for i in self
      array2d[i.to_s.size] = [] if array2d[i.to_s.size].nil?
      array2d[i.to_s.size] += [i]
    end
    array2d.inject({}) do |mem, var|
      if !var.nil?
        pos =  var.first.to_s.length.odd? ? "odd" : "even"
         hash[pos] += [var]
      end
    end
    print hash
  end	
end