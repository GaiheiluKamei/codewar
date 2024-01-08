describe "Tests" do
  it "Fixed tests" do
    expect(simple_multiplication(2)).to eq(16)
    expect(simple_multiplication(1)).to eq(9)
    expect(simple_multiplication(8)).to eq(64)
    expect(simple_multiplication(4)).to eq(32)
    expect(simple_multiplication(5)).to eq(45)
  end
end