describe "Solution" do
  it "Fixed tests" do
    expect(number([])).to eq([])
    expect(number(["a", "b", "c"])).to eq(["1: a", "2: b", "3: c"])
  end
end