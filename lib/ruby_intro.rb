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
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
