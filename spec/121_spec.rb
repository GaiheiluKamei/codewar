describe "Arrays of Cats and Dogs" do
  it "Basic tests" do
    expect(solve_121(['D','C','C','D','C'], 1)).to eq(2)
    expect(solve_121(['C','C','D','D','C','D'],2)).to eq(3)
    expect(solve_121(['C','C','D','D','C','D'],1)).to eq(2)
    expect(solve_121(['D','C','D','C','C','D'],3)).to eq(3)
    expect(solve_121(['C','C','C','D','D'],3)).to eq(2)
    expect(solve_121(['C','C','C','D','D'],2)).to eq(2)
    expect(solve_121(['C','C','C','D','D'],1)).to eq(1)
  end
end