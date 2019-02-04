# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  val = 0
  for num in arr
    val += num
  end
  return val
end

def max_2_sum arr
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  end
  firstmax = -99999
  secondmax = -99999
  for num1 in arr
    if num1 > firstmax
      firstmax = num1
    end
  end
  arr2 = arr.delete_at(arr.index(firstmax))
  for num2 in arr
    if num2 > secondmax
      secondmax = num2
    end
  end
  return secondmax + firstmax
end

def sum_to_n? arr, n
  if arr.size == 0 || arr.size == 1
    return FALSE
  end
  for num1 in arr
    for num2 in arr
      sum = num1 + num2
      if sum == n && num1 != num2
        return TRUE
      end
    end
  end
  return FALSE
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s
  return /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  return /^\d+$/.match(s) != nil ? s.to_i % 4 == 0 :  FALSE
end

# Part 3

class BookInStock
  attr_accessor:isbn
  attr_accessor:price
  def initialize(isbn, price)
    setIsbn(isbn)
    setPrice(price)
  end

  def setIsbn(isbn)
    if /[\d-]+/.match(isbn) == nil
      raise ArgumentError, 'Cannot accept non-numerical ISBN'
    end
    @isbn = isbn
  end

  def setPrice(price)
    if price <= 0
      raise ArgumentError, 'Cannot accept negative or zero price value'
    end
    @price = price
  end

  def price_as_string
    "$%.2f" % [@price]
  end
end
