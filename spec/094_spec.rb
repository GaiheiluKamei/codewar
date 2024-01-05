describe "Solution" do
  it "Fixed tests" do
    expect(sequence_sum(2, 6, 2)).to eq(12)
    expect(sequence_sum(1, 5, 1)).to eq(15)
    expect(sequence_sum(1, 5, 3)).to eq(5)
    expect(sequence_sum(0, 15, 3)).to eq(45)
    expect(sequence_sum(16, 15, 3)).to eq(0)
    expect(sequence_sum(2, 24, 22)).to eq(26)
    expect(sequence_sum(2, 2, 2)).to eq(2)
    expect(sequence_sum(2, 2, 1)).to eq(2)
    expect(sequence_sum(1, 15, 3)).to eq(35)
    expect(sequence_sum(15, 1, 3)).to eq(0)
  end
end