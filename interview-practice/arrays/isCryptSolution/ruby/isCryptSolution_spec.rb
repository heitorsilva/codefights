require_relative './isCryptSolution'

describe 'isCryptSolution' do
  context 'when the solution represents the correct solution to the cryptarithm crypt' do
    it 'should return true' do
      crypt = ["SEND",
               "MORE",
               "MONEY"]
      solution = [["O","0"],
                  ["M","1"],
                  ["Y","2"],
                  ["E","5"],
                  ["N","6"],
                  ["D","7"],
                  ["R","8"],
                  ["S","9"]]
      expect(isCryptSolution(crypt, solution)).to eq(true)

      crypt = ["A",
               "A",
               "A"]
      solution = [["A","0"]]

      expect(isCryptSolution(crypt, solution)).to eq(true)
    end
  end

  context 'when the solution represents the wrong solution to the cryptarithm crypt' do
    it 'should return false' do
      crypt = ["TEN",
               "TWO",
               "ONE"]
      solution = [["O","1"],
                  ["T","0"],
                  ["W","9"],
                  ["E","5"],
                  ["N","4"]]
      expect(isCryptSolution(crypt, solution)).to eq(false)
    end
  end
end
