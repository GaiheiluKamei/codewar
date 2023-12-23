describe("Tests") do
  it "test" do
    expect(max_sequence([])).to eq(0)
    expect(max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])).to eq(6)
    expect(max_sequence([11])).to eq(11)
    expect(max_sequence([-32])).to eq(0)
    expect(max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4])).to eq(12)
  end
end