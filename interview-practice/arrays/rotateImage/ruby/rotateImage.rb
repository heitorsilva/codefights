def rotateImage(a)
  return [] if a.nil? or a.empty?

  rotated = []

  size = a.length

  (0..size-1).each do |column|
    rotated[column] = [] if rotated[column].nil?

    (size-1).downto(0).each do |line|
      rotated[column] << a[line][column]
    end
  end

  rotated
end
