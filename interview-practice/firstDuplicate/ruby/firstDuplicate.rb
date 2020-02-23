def firstDuplicate(a)
  return -1 if a.length == 0 or a.length == 1

  checked = {}

  a.each do |current|
    checked[current] += 1 if checked.key? current
    checked[current] = 1 unless checked.key? current

    return current if checked[current] == 2
  end

  -1
end
