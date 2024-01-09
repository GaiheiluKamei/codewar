describe "Fixed tests" do
  it "should pass fixed tests" do
    b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
    c = ["A", "B"]
    res = "(A : 200) - (B : 1140)"
    expect(stockList(b, c)).to eq(res)
  end
end