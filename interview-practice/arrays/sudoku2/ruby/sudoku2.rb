require 'set'

def sudoku2(grid)
  return false if grid.nil? or grid.empty?

  seen = {
    0 => Set[],
    1 => Set[],
    2 => Set[],
    3 => Set[],
    4 => Set[],
    5 => Set[],
    6 => Set[],
    7 => Set[],
    8 => Set[]
  }

  (0..8).each do |line|
    seenLine = Set[]
    seenColumn = Set[]

    (0..8).each do |column|
      return false if seenLine.include? grid[line][column]
      seenLine.add(grid[line][column]) if grid[line][column] != '.'

      return false if seenColumn.include? grid[column][line]
      seenColumn.add(grid[column][line]) if grid[column][line] != '.'

      if line < 3 and column < 3
        return false if seen[0].include? grid[line][column]
        seen[0].add(grid[line][column]) if grid[line][column] != '.'
      end

      if line < 3 and (column > 2 and column < 6)
        return false if seen[1].include? grid[line][column]
        seen[1].add(grid[line][column]) if grid[line][column] != '.'
      end

      if line < 3 and (column > 5 and column < 9)
        return false if seen[2].include? grid[line][column]
        seen[2].add(grid[line][column]) if grid[line][column] != '.'
      end

      if (line > 2 and line < 6) and column < 3
        return false if seen[3].include? grid[line][column]
        seen[3].add(grid[line][column]) if grid[line][column] != '.'
      end

      if (line > 2 and line < 6) and (column > 2 and column < 6)
        return false if seen[4].include? grid[line][column]
        seen[4].add(grid[line][column]) if grid[line][column] != '.'
      end

      if (line > 2 and line < 6) and (column > 5 and column < 9)
        return false if seen[5].include? grid[line][column]
        seen[5].add(grid[line][column]) if grid[line][column] != '.'
      end

      if (line > 5 and line < 9) and column < 3
        return false if seen[6].include? grid[line][column]
        seen[6].add(grid[line][column]) if grid[line][column] != '.'
      end

      if (line > 5 and line < 9) and (column > 2 and column < 6)
        return false if seen[7].include? grid[line][column]
        seen[7].add(grid[line][column]) if grid[line][column] != '.'
      end

      if (line > 5 and line < 9) and (column > 5 and column < 9)
        return false if seen[8].include? grid[line][column]
        seen[8].add(grid[line][column]) if grid[line][column] != '.'
      end
    end
  end

  true
end
