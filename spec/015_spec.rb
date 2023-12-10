describe "count_by" do
  it "Fixed tests" do
    expect(count_by(1, 5)).to eq([1, 2, 3, 4, 5])
    expect(count_by(2, 5)).to eq([2, 4, 6, 8, 10])
    expect(count_by(3, 5)).to eq([3, 6, 9, 12, 15])
    expect(count_by(50, 5)).to eq([50, 100, 150, 200, 250])
    expect(count_by(100, 5)).to eq([100, 200, 300, 400, 500])
  end
end