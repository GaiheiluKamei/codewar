describe "Solution" do
  it "Fixed tests" do
    expect(rgb(0, 0, 0)).to eq('000000')
    expect(rgb(0, 0, -20)).to eq('000000')
    expect(rgb(300,255,255)).to eq('FFFFFF')
    expect(rgb(173,255,47)).to eq('ADFF2F')
  end
end