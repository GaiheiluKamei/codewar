describe "Solution" do
  it "Fixed tests" do
    expect(binary_array_to_number([0,0,0,1])).to eq(1)
    expect(binary_array_to_number([0,0,1,0])).to eq(2)
    expect(binary_array_to_number([1,1,1,1])).to eq(15)
    expect(binary_array_to_number([0,1,1,0])).to eq(6)
  end
end