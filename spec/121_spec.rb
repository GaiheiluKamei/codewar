describe "Arrays of Cats and Dogs" do
  it "Basic tests" do
    expect(solve(['D','C','C','D','C'], 1)).to eq(2)
    expect(solve(['C','C','D','D','C','D'],2)).to eq(3)
    expect(solve(['C','C','D','D','C','D'],1)).to eq(2)
    expect(solve(['D','C','D','C','C','D'],3)).to eq(3)
    expect(solve(['C','C','C','D','D'],3)).to eq(2)
    expect(solve(['C','C','C','D','D'],2)).to eq(2)
    expect(solve(['C','C','C','D','D'],1)).to eq(1)
  end
end