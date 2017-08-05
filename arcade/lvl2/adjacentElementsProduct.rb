# Given an array of integers, find the pair of adjacent elements
# that has the largest product and return that product.

# Example

# For inputArray = [3, 6, -2, -5, 7, 3], the output should be
# adjacentElementsProduct(inputArray) = 21.

# 7 and 3 produce the largest product.

def adjacentElementsProduct(inputArray)
  largest = nil
  inputArray.each_with_index do |num, index|
    break if index+1 == inputArray.size
    product = num * inputArray[index+1]
    largest = product if index == 0 or product > largest
  end
  return largest
end
