# Define a recursive function that counts down from n to 1

def countdown(n)
  return if n.zero? # base case
  puts n
  countdown(n-1)    # getting closer to base case 
end               


# Define a recursive function that finds the factorial of a number.

def factorial(num)
  return 1 if num.zero?
  num * factorial(num-1)
end

# Define a recursive function that returns true if a string is a palindrome and false otherwise.

def palindrome(phrase)
  return true if phrase.length == 0 || phrase.length == 1
  if phrase[0] == phrase[-1]
    palindrome(phrase[1..-2])
  else
    false
  end 
end

# Define a recursive function that takes an argument n and prints 
# "n bottles of beer on the wall", "(n-1) bottles of beer on the wall", 
# ..., "no more bottles of beer on the wall".


# version 1
def bottles_of_beer(n)
  return if n.zero? # base case
  puts "#{n} bottles of beer on the wall"
  bottles_of_beer(n-1)    # getting closer to base case
  puts "...no more bottles of beer on the wall." if n-1 == 0 
end    

# version 2
def bottles(n)
  if n == 0
    puts "...no more bottles of beer on the wall"
  else
    puts "#{n} bottles of beer on the wall"
    bottles(n-1)
  end
end


# Define a recursive function that takes an argument n and returns the 
# fibonacci value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21... 
# So fib(5) should return 5 and fib(6) should return 8.

# version 1
def fibonacci(n)
  return if n.zero? # base case
  prev = 0
  puts n + prev
  countdown(n-1)    # getting closer to base case 
end 

# version 2
def fibonacci(n)
  if n < 2
      n
  else
      fibonacci(n-1) + fibonacci(n-2)
  end
end

puts fibonacci(6) 


# Define a recursive function that flattens an array. The method should convert 
# [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].

def flatten(array, result = [])
  array.each do |element|
    if element.kind_of?(Array)
      flatten(element, result)
    else
      result << element
    end
  end 
  result
end



# Use the roman_mapping hash to define a recursive method that converts an integer to a Roman numeral.


roman_hash = {
  1000 => "M",
  900 => "CM",
  500 => "D",
  400 => "CD",
  100 => "C",
  90 => "XC",
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}
# version 1
  def integer_to_roman(roman_hash, number, result = "")
    return result if number == 0
    roman_hash.keys.each do |divisor|
      quotient, modulus = number.divmod(divisor)
      result << roman_hash[divisor] * quotient
      return integer_to_roman(roman_hash, modulus, result) if quotient > 0
    end
  end
# version 2
  def integer_to_roman(num, hash)
    if num == 1
      return "I"
    end
    for key in hash.keys
      if num - key > 0
        return hash[key] + integer_to_roman(num - key, hash)
      end
    end
  end