describe "Check the Exam" do
  it "Basic tests" do
    expect(two_sum([1, 2, 3], 4).sort).to eq([0, 2])
    expect(two_sum([1234, 5678, 9012], 14690).sort).to eq([1, 2])
    expect(two_sum([2, 2, 3], 4).sort).to eq([0, 1])
  end
end