describe "Solution" do
  it "Fixed tests" do
    expect(next_bigger(12)).to eq(21)
    expect(next_bigger(513)).to eq(531)
    expect(next_bigger(2017)).to eq(2071)
    expect(next_bigger(414)).to eq(441)
    expect(next_bigger(144)).to eq(414)
  end
end