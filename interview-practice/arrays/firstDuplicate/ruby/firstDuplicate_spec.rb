require_relative './firstDuplicate'

describe 'firstDuplicate' do
  it 'should return the first duplicate number in an Array' do
    expect(firstDuplicate([2, 1, 3, 5, 3, 2])).to eq(3)
    expect(firstDuplicate([2, 2])).to eq(2)
  end

  it 'should return -1 when there is no duplicate number in an Array' do
    expect(firstDuplicate([2, 4, 3, 5, 1])).to eq(-1)
  end
end
