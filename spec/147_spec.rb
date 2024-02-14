describe "Solution" do
  it "Fixed tests" do
    expect(4.palindrome_below(2)).to eq([1,3])
    expect(15.palindrome_below(10)).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 11])
  end
end