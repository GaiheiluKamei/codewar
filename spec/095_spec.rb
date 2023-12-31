describe "Fixed tests" do
  it "should pass fixed tests" do
    expect(solution([1, 2, 3, 10, 5])).to eq([1, 2, 3, 5, 10])
    expect(solution(nil)).to eq([])
    expect(solution([])).to eq([])
    expect(solution([20, 2, 10])).to eq([2, 10, 20])
  end
end