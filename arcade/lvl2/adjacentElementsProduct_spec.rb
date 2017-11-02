require_relative './adjacentElementsProduct'

describe 'Adjacent Elements Product' do
  it 'should return the largest product of two adjacent elements' do
    expect(adjacentElementsProduct([3, 6, -2, -5, 7, 3])).to eq(21)
  end
end
