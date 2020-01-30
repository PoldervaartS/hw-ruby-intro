# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sumarr = 0
  arr.each do |num|
    sumarr = sumarr + num
  end
  return sumarr
end

def max_2_sum arr
  return arr.max(2).sum
end

def sum_to_n? arr, n
  for i in 0...(arr.length-1)
    for j in (i+1)...arr.length
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return ("Hello, #{name}")
end

def starts_with_consonant? s
  consonants = ['a','e','i','o','u']
  if ( (s.length == 0) || !(s[0] =~ /[[:alpha:]]/) )
    return false
  end
  
  for letter in consonants do
    if(s.downcase[0] == letter)
      return false
    end
  end
  return true
end

def binary_multiple_of_4? s
  chars = s.split('')
  for letter in chars
    if (letter != '0' && letter != '1')
      return false
    end
  end
  if(s.length == 0)
    return false
  end
  begin
    return (s.to_i(2) % 4) == 0
  rescue 
    return false
  end
end

# Part 3

class BookInStock
  @isbn
  @price
  def initialize(isbn, price)
    if(isbn == '' || price <= 0)
      raise ArgumentError, 'One of the values is not valid'
    end
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    return "\$%0.2f" % [price]
  end
end
