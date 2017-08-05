# Given a string, replace each its character by the next one
# in the English alphabet (z would be replaced by a).

# Example

# For inputString = "crazy", the output should be
# alphabeticShift(inputString) = "dsbaz".

def alphabeticShift(inputString)
  outputString = ''
  inputString.each_char do |letter|
    letter = letter == 'z' ? 'a' : letter.next
    outputString << letter
  end
  return outputString
end
