describe "Solution" do
  it "Fixed tests" do
    expect(solution_150([1, 2, 3], [4, 5, 6])).to eq(9)
    expect(solution_150([10, 20, 10, 2], [10, 25, 5, -2])).to eq(16.5)
    expect(solution_150([-1, 0], [0, -1])).to eq(1)
  end
end