describe "Solution" do
  it "Fixed tests" do
    expect(powers_of_two(0)).to eq([1])
    expect(powers_of_two(1)).to eq([1, 2])
    expect(powers_of_two(4)).to eq([1, 2, 4, 8, 16])
  end
end