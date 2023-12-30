describe "Tests" do
  it "Basic tests" do
    expect(reverseList(nil)).to eq(nil)
    expect(reverseList([1, [2, [3, nil]]])).to eq([3, [2, [1, nil]]])
  end
end