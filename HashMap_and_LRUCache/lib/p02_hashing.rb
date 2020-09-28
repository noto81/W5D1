class Integer
  # Integer#hash already implemented for you
end


# 1 --> hjk
# 2 --> ooo

#[1,2]--> [hjk,ooo]


class Array
  def hash
    return 0 if self.empty?
    self.each { |ele| ele.hash}
  end
end

class String
  def hash 
    new_string = []
    self.each_char { |char| new_string << char.ord.hash}
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end


# ord → integerclick to toggle source
# Returns the Integer ordinal of a one-character string.

# "a".ord         #=> 97