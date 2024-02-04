describe "Fixed tests" do
  it "should pass fixed tests" do
    expect(solution_95([1, 2, 3, 10, 5])).to eq([1, 2, 3, 5, 10])
    expect(solution_95(nil)).to eq([])
    expect(solution_95([])).to eq([])
    expect(solution_95([20, 2, 10])).to eq([2, 10, 20])
  end
end