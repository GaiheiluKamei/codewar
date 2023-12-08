describe "is_square" do
  it "should work for some examples" do
    expect(is_square (-1)).to be false
    expect(is_square  0).to be true
    expect(is_square  3).to be false
    expect(is_square  4).to be true
    expect(is_square 25).to be true
    expect(is_square 26).to be false
  end
end