# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  arr.each { |num| total += num }
  total
end

def max_2_sum(arr)
  # YOUR CODE HERE

  # APPROACH - 1 (Sort and find)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  sorted_arr = arr.sort
  sorted_arr[-1] + sorted_arr[-2]
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  arr.each_with_index do |a, i|
    arr.each_with_index do |b, j|
      return true if i != j && a + b == number
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.empty?
    return false
  else
    first_char = string[0].downcase
    if ('a'..'z').include?(first_char) && !['a', 'e', 'i', 'o', 'u'].include?(first_char)
      return true
    else
      return false
    end
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  
  if string.empty?
    return false
  end
  
  string.each_char do |char|
    if char != '0' && char != '1'
      return false
    end
  end

  if string.to_i(2) % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE

  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError.new("Invalid ISBN or price")
    else
      @isbn = isbn
      @price = price
    end
  end

  def price_as_string
    "$" + sprintf('%.2f', @price)
  end
end