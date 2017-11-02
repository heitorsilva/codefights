require_relative './shapeArea'

describe 'Shape Area' do
  context 'when dealing with an 2-interesting polygon' do
    it 'should return 5' do
      result = shapeArea(2)
      expect(result).to eq(5)
    end
  end

  context 'when dealing with an 3-interesting polygon' do
    it 'should return 13' do
      result = shapeArea(3)
      expect(result).to eq(13)
    end
  end
end
