# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  #use sum method for all arrays
  return arr.sum
end

def max_2_sum arr
  #handle edge cases for 0 and 1 length arrays
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  end
  #sort the array into a new array called sorted using the sort method
  sorted = arr.sort
  #sum the last 2 indexes of sorted which will be the highest two numbers in the original array and return
  return sorted[-2] + sorted[-1]
end

def sum_to_n? arr, n
  #I found this combination method on stack overflow when googling for this question. This method
  #takes an array and a parameter, 2 in this case) and returns an array of all combinations of the 
  #described parameters elements in the array. I then use the find method which will return only the first
  #instance in the array of the scenario I describe. Im this case, I am looking for two values, so |x,y| such that 
  #x +y is equal to the parameter passed in to the original method. Next, I assign a variable called combos to the result
  #of this statement. 
  combos = arr.combination(2).find{|x,y| x+y==n}
  #Now I can simply check if anything was stored in combos. If there was, that means I found a match and return true
  #If nothing was found, I return false.
  if combos
    return true
  else
    return false
  end
end

# Part 2

def hello(name)
  # This is just a simple string concatenation using https://www.rubyguides.com/2019/07/ruby-string-concatenation/ as reference
  return "Hello, " << name
end

def starts_with_consonant? s
  #I used ruby regex to solve this using the reference of https://stackoverflow.com/questions/4973178/regex-for-string-first-chars
  # and https://www.rubyguides.com/2015/06/ruby-regex/. 

  #The ^ outside of the brackets checks only the first character. Then the ^ inside the brackets will try to match
  #everything thats not a vowel (aeiou) with the \d and \W modifiers. 
  #The \d modifier will include all digits and the /W  will include everything that is not a letter or digit which in our case
  #are consonants for this exercise. 
  #Finally the i tells us to ignore case sensitivity so that we can check both upper and lower case. 
  #Match will return nil if a match is not found, in this case that means there is no consonant.
  #Thus we return false, else we return true. We can do that in one statement by
  #using "!= nil"
  return /^[^aeiou\d\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  #I know that any binary number whose last 2 bits are zeroes is divisible by 4, so I just need to check if the 
  #last two characters in any binary string are "00". However, any string shorter than length 2 cannot be spliced into
  #the last 2 chars so I handled those edge cases separately
  #https://stackoverflow.com/questions/32536143/check-if-string-has-only-0-and-1 was used for splicing help

  #set the boolean initially to false
  binary_multiple_of_4 = false
  #handle first edge case of an empty string and set to false (not actually necessary since it's alreay false but
  #I wanted to show I was aware of this edge case)
  if s.size == 0 
    binary_multiple_of_4 = false
  #handle second edge case of a string of length 1, "0" is a multiple of 4 while "1" is not
  elsif s.size == 1 && s = "0"
    binary_multiple_of_4 = true
    #finally this last portion checks both if it is a multiple by 4 and if it is a binary number
    #1. every binary number should have only zeroes and 1. s.count("01") counts the number of "0" and "1" in s
    #if this count matches the length of the string, then we have a binary number
    #2. Here is where I splice the string to just get a substring of the last two characters using s[-2..-1]
    #I then check if this string is the same as "00" using ==, if it is, then it is a multiple of 4
    #NOTE: In ruby, string equivalency can be checked using == unlike in Java
  elsif s.count('01') == s.size and s[-2..-1] == "00"
   binary_multiple_of_4 = true
  end 
  #Now return the boolean flag that I have been updating as I check each case
  return binary_multiple_of_4
end
  

# Part 3

class BookInStock
# YOUR CODE HERE
#attr_accessor will create my instance variables with basic getters and setters for me so I don't need to write them
#https://www.rubyguides.com/2018/11/attr_accessor/
attr_accessor :isbn, :price

#constructor
def initialize(isbn, price)
  #use raise ArgumentError to check for exxceptions if either the isbn is an empty string or the price is less than or equal to 0
  raise ArgumentError if isbn.size == 0 || price <= 0
  #set instance variables to incoming values
  @isbn = isbn
  @price = price
end

#format price with a $ and two decimal places
def price_as_string
  #I used this source https://www.rubyguides.com/2012/01/ruby-string-formatting/
  #This is very similar to other languages, I am simply using the equivalent of print f formatting tools like in Java
  #Specifically the %.2f will display the floating point number in two decimal places
  return "$%.2f" % [@price]
end





end
