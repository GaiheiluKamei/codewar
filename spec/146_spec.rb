describe "Solution" do
  it "Fixed tests" do
    expect(solution_146('XXI')).to eq(21)
    expect(solution_146('I')).to eq(1)
    expect(solution_146('IV')).to eq(4)
    expect(solution_146('MMVIII')).to eq(2008)
    expect(solution_146('MDCLXVI')).to eq(1666)
  end
end