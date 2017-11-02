require_relative './matrixElementsSum'

describe 'Matrix Elements Sum' do
  it 'should return sum of matrix elements discarding zeroes and numbers below zeroes' do
    matrix = [[0, 1, 1, 2], [0, 5, 0, 0], [2, 0, 3, 3]]

    result = matrixElementsSum(matrix)

    expect(result).to eq(9)

    matrix = [[1, 1, 1, 0], [0, 5, 0, 1], [2, 1, 3, 10]]

    result = matrixElementsSum(matrix)

    expect(result).to eq(9)
  end
end
