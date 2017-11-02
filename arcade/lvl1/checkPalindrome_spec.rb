require_relative './checkPalindrome'

describe 'Check Palindrome' do
  context 'when string is a palindrome' do
    it 'should return true' do
      expect(checkPalindrome('Ana')).to eq(true)
    end
  end

  context 'when string is not a palindrome' do
    it 'should return false' do
      expect(checkPalindrome('Paula')).to eq(false)
    end
  end
end
