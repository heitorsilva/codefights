def adjacentElementsProduct(inputArray)
  largest = nil
  inputArray.each_with_index do |num, index|
    break if index+1 == inputArray.size
    product = num * inputArray[index+1]
    largest = product if index == 0 or product > largest
  end
  return largest
end

