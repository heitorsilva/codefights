require_relative './makeArrayConsecutive2'

describe 'Make Array Consecutive 2' do
  context 'when dealing with a sequence missing numbers' do
    it 'should return how many numbers are missing on the sequence' do
      result = makeArrayConsecutive2([6, 2, 3, 8])
      expect(result).to eq(3)
    end
  end
end
