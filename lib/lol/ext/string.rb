class String
  def lazy_to_hash
    hash = { }
    return hash if self.empty?
    arr = self.split(',').map { |i| i.strip }
    arr.each do |key|
      hash[key.to_sym] = true
    end #each
    hash
  end

end


class Hash
  def hash_to_sym
    hash = {}
    return hash if self.empty?
    self.each do |key,value|
      hash[key.to_sym]=value
    end
    hash
  end
end


