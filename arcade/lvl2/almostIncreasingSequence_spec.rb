require_relative './almostIncreasingSequence'

describe 'Almost Increasing Sequence' do
  context 'when dealing with a sequence' do
    context 'and it is possible to remove one of it\'s elements' do
      it 'should return true if the sequence is increasing' do
        result = almostIncreasingSequence([1, 3, 2])
        expect(result).to eq(true)
      end

      it 'should return false if the sequence is not increasing' do
        result = almostIncreasingSequence([1, 3, 2, 1])
        expect(result).to eq(false)
      end
    end
  end
end
