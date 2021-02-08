# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  return array.inject(0,:+)
end


def max_2_sum(array)
  return sum(array.sort.last(2))
end

def sum_to_n?(array, n)
  if array.length() < 2
    return false
  else
    return array.combination(2).any? {|a, b| a + b == n }
  end
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end


def starts_with_consonant?(s)
  # YOUR
  if s == ""
    return false
  else
    if s.downcase[0].ord <123 && s.downcase[0].ord > 96
      if s.downcase[0].ord ==97 || s.downcase[0].ord == 101 ||s.downcase[0].ord == 105 ||s.downcase[0].ord == 111 || s.downcase[0].ord==117
        return false
      else
        return true
      end
    else
    return false
    end
  end
end

puts "hello"

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[0-1]+$/
    if s.to_i(2)%4 == 0
      return true
    else
      return false
    end
  else
    return false
  end
    
end

# Part 3

class BookInStock
# YOUR CODE HERE
 attr_accessor :isbn,:price


	def initialize(isbn, price)
		raise ArgumentError, 
			"Invalid Input" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%.2f", price)
	end
end
