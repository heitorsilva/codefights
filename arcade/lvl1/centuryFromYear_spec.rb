require_relative './centuryFromYear'

describe 'Century From Year' do
  it 'should return the century a year is in' do
    expect(centuryFromYear(1700)).to eq(17)
    expect(centuryFromYear(1905)).to eq(20)
    expect(centuryFromYear(2017)).to eq(21)
  end
end
