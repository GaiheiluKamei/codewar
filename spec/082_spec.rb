describe "Sample Tests" do
  it "should pass sample tests" do
    expect(small_enough([66, 101], 200)).to be(true)
    expect(small_enough([78, 117, 110, 99, 104, 117, 107, 115], 100)).to be(false)
    expect(small_enough([101, 45, 75, 105, 99, 107], 107)).to be(true)
    expect(small_enough([80, 117, 115, 104, 45, 85, 112, 115], 120)).to be(true)
  end
end