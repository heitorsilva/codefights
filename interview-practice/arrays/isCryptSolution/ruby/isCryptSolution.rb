def isCryptSolution(crypt, solution)
  return false if crypt.nil? || crypt.empty? || solution.nil? || solution.empty?

  solution = solution.to_h

  word1 = crypt[0]
  value1 = ''
  word2 = crypt[1]
  value2 = ''
  word3 = crypt[2]
  value3 = ''

  return false if (solution.fetch(word1[0], '') == '0' && word1.length > 1) ||
                  (solution.fetch(word2[0], '') == '0' && word2.length > 1) ||
                  (solution.fetch(word3[0], '') == '0' && word3.length > 1)

  word1.each_char do |char|
    value1 += solution.fetch(char, '')
  end

  word2.each_char do |char|
    value2 += solution.fetch(char, '')
  end

  word3.each_char do |char|
    value3 += solution.fetch(char, '')
  end

  value1.to_i + value2.to_i == value3.to_i
end
