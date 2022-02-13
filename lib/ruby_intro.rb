# Author: Youli Zhao
# Date:   02/12/2022
# Class:  CSCE 606

# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = arr.inject(0, :+)
  return sum
end


def max_2_sum arr
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    sorted_arr = arr.sort
    max_two = sorted_arr.max(2)
    sum = max_two[0] + max_two[1]
  return sum
  end
end


def sum_to_n? arr, n
    arr.combination(2).any? {|x, y| x+y==n}
end


# Part 2

def hello(name)
  return "Hello, " + name
end



def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end


def binary_multiple_of_4? s
  if s=="0"||(/^[10]*00$/.match(s)) != nil
    return true
  else
    return false
  end
end



# Part 3

class BookInStock
  
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
  
end