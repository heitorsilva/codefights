require_relative './rotateImage'

describe 'rotateImage' do
  it 'should return a 90 degree (clockwise) rotated matrix' do
    matrix = [[1,2,3],
              [4,5,6],
              [7,8,9]]
    rotated = [[7,4,1],
               [8,5,2],
               [9,6,3]]
    expect(rotateImage(matrix)).to eq(rotated)

    matrix = [['a','b','c','d'],
              ['e','f','g','h'],
              ['i','j','k','l'],
              ['m','n','o','p']]
    rotated = [['m','i','e','a'],
               ['n','j','f','b'],
               ['o','k','g','c'],
               ['p','l','h','d']]
    expect(rotateImage(matrix)).to eq(rotated)
  end

  it 'should return [] when the matrix is empty or nil' do
    expect(rotateImage(nil)).to eq([])
    expect(rotateImage([])).to eq([])
  end
end
