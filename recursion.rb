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

def countdown(n)
  return if n.zero? # base case
  puts n
  countdown(n-1)    # getting closer to base case 
end               

