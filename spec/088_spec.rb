describe "Solution" do
  it "Fixed tests" do
    expect(race(720, 850, 70)).to eq([0, 32, 18])
    expect(race(80, 91, 37)).to eq([3, 21, 49])
    expect(race(80, 100, 40)).to eq([2, 0, 0])
  end
end