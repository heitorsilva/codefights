require_relative './add'

describe 'Add' do
  it 'should sum two numbers' do
    result = add(2, 2)

    expect(result).to eq(4)
  end
end