true_if_even = lambda { |value, index| value.even? }
never_true = lambda { |value, index| false }
true_if_value_equals_index = lambda { |value, index| value == index }
true_if_length_equals_index = lambda { |value, index| value.length == index }

describe "Fixed Tests" do
  it 'test' do
    expect(find_in_array([], true_if_even)).to eq(-1)
    expect(find_in_array([1,3,5,6,7], true_if_even)).to eq(3)
    expect(find_in_array([2,4,6,8], true_if_even)).to eq(0)
    expect(find_in_array([2,4,6,8], never_true)).to eq(-1)
    expect(find_in_array([13,5,3,1,4,5], true_if_value_equals_index)).to eq(4)
    expect(find_in_array([-3, -9, 8, 7, -9, 7, 4, 7, 1] , true_if_value_equals_index)).to eq(7)
    expect(find_in_array(["one","two","three","four","five","six"], true_if_length_equals_index)).to eq(4)
    expect(find_in_array(["bc","af","d","e"], true_if_length_equals_index)).to eq(-1)
  end
end