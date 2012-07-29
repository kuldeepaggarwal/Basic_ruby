class Array
  def to_hash(length)
    array2d = Array.new(length + 1){Array.new}
    hash = Hash.new(Array.new)
    for i in self
      array2d[i.to_s.size] << i
    end
    array2d.inject do |mem, var|
      if var[0].to_s.length > 0
        if var[0].to_s.length.odd?
          hash["odd"] += [var] 
        else
          hash["even"] += var
        end
      end
    end
    print hash
  end	
end