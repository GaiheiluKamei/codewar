describe "divisors" do
  it "Fixed tests" do
    expect(divisors(1)).to eq(1)
    expect(divisors(10)).to eq(4)
    expect(divisors(11)).to eq(2)
    expect(divisors(25)).to eq(3)
    expect(divisors(54)).to eq(8)
  end
end