describe "Split Strings" do
  it "Basic tests" do
    expect(solution_143("abcdef")).to eq(["ab", "cd", "ef"])
    expect(solution_143("abcdefg")).to eq(["ab", "cd", "ef", "g_"])
    expect(solution_143("")).to eq([])
  end
end