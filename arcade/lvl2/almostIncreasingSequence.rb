# Given a sequence of integers as an array, determine whether it is possible to obtain
# a strictly increasing sequence by removing no more than one element from the array.

# Example

# For sequence = [1, 3, 2, 1], the output should be
# almostIncreasingSequence(sequence) = false;

# There is no one element in this array that can be removed
# in order to get a strictly increasing sequence.

# For sequence = [1, 3, 2], the output should be
# almostIncreasingSequence(sequence) = true.

# You can remove 3 from the array to get the strictly increasing sequence [1, 2].
# Alternately, you can remove 2 to get the strictly increasing sequence [1, 3].

def almostIncreasingSequence(sequence)
  return true if (sequence.size - 1) == 1

  return false if sequence.uniq.size < sequence.size - 1

  return true if sequence == sequence.sort.uniq

  count = 1
  initial_size = sequence.size
  max_count = initial_size-1

  while count < max_count do
    sequence2 = sequence[count-1..count+1]
    if sequence2[2] < sequence2[1] or sequence2[1] < sequence2[0] or sequence2[2] < sequence2[0]
      return false if max_count < initial_size-1

      if sequence2[0] > sequence2[1]
        sequence.delete_at(count-1)
      elsif sequence2[1] > sequence2[2] and sequence2[0] < sequence2[2]
        sequence.delete_at(count)
      else
        sequence.delete_at(count+1)
      end

      max_count -= 1
    else
      count += 1
    end
  end

  return sequence[-2] < sequence[-1]
end
