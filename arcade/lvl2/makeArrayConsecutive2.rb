# Ratiorg got statues of different sizes as a present from CodeMaster for his birthday,
# each statue having an non-negative integer size. Since he likes to make things perfect,
# he wants to arrange them from smallest to largest so that each statue will be bigger
# than the previous one exactly by 1. He may need some additional statues to be able to accomplish that.
# Help him figure out the minimum number of additional statues needed.

# Example

# For statues = [6, 2, 3, 8], the output should be
# makeArrayConsecutive2(statues) = 3.

# Ratiorg needs statues of sizes 4, 5 and 7.

def makeArrayConsecutive2(statues)
  additional = 0
  statues = statues.sort_by(&:to_i)

  statues.each_with_index do |statue, index|
    break if statue == statues[-1]
    num = statue + 1

    while num < statues[index+1]
      additional += 1
      num += 1
    end
  end

  return additional
end
