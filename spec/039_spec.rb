describe "Solution" do
  it "Fixed tests" do
    expect(square_digits(3212)).to eq(9414)
    expect(square_digits(2112)).to eq(4114)
    expect(square_digits(1111)).to eq(1111)
    expect(square_digits(1234321)).to eq(14916941)
    expect(square_digits(0)).to eq(0)
  end
end
