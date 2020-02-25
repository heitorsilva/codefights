require_relative './firstNotRepeatingCharacter'

describe 'firstNotRepeatingCharacter' do
  it 'should return first instance of a non-repeating character' do
    expect(firstNotRepeatingCharacter('z')).to eq('z')
    expect(firstNotRepeatingCharacter('abacabad')).to eq('c')
    expect(firstNotRepeatingCharacter('abcdab')).to eq('c')
    expect(firstNotRepeatingCharacter('abdcab')).to eq('d')
  end

  it 'should return "_" when there is no non-repeating character' do
    expect(firstNotRepeatingCharacter('')).to eq('_')
    expect(firstNotRepeatingCharacter('abacabaabacaba')).to eq('_')
  end
end
