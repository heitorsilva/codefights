def firstNotRepeatingCharacter(s)
  size = s.length
  return '_' if size == 0
  return s if size == 1

  checked = {}

  size.times do |i|
    current = s[i]

    checked[current] = (checked[current].nil? ? 0 : checked[current]) + 1
  end

  checked.each_key do |char|
    return char if checked[char] == 1
  end

  '_'
end
