describe "Solution" do
  it "Fixed tests" do
    a1 = ["arp", "live", "strong"]
    a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
    expect(in_array(a1, a2)).to eq(["arp", "live", "strong"])

    a1 = ["tarp", "mice", "bull"]
    expect(in_array(a1, a2)).to eq([])
  end
end