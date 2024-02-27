require 'timeout'

options = [[[1, 10, 20, 200, 210], 220], [[4, 6, 10, 15, 16], 21], [[1, 30, 40, 50, 10012], 9], [[1, 2, 5, 3], 2]]
expected = [[1, 4], [1, 3], nil, nil]

describe "Uniqueness Test" do
  it "should test to see indexes in the result array are unique" do
    0.upto(options.length - 1) do |l|
      if get_indices_of_item_weights(options[l][0], options[l][1]) != nil then
        Timeout::timeout(5) {
          expect(get_indices_of_item_weights(options[l][0], options[l][1])[0] != get_indices_of_item_weights(options[l][0], options[l][1])[1]).to be(true)
        }
      end
    end
  end
end

describe "Time Test" do
  it "should test to see if it executes within less than 5 seconds" do
    0.upto(options.length - 1) do |i|
      Timeout::timeout(5) {
        expect(get_indices_of_item_weights(options[i][0], options[i][1])).to eq(expected[i])
      }
    end
  end
end

describe "Solution" do
  it "should test for correct indices or nil if none found within input array" do
    0.upto(options.length - 1) do |i|
      Timeout::timeout(5) {
        expect(get_indices_of_item_weights(options[i][0], options[i][1])).to eq(expected[i])
      }
    end
  end
end