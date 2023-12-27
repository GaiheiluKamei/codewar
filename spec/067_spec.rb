describe "Find the capitals"  do
  it "Sample Tests" do
    expect( capitals('CodEWaRs')).to eq([0,3,4,6])
    expect( capitals('')).to eq([])
    expect( capitals('aAbB')).to eq([1, 3])
    expect( capitals('4ysdf4')).to eq([])
    expect( capitals('ABCDEF')).to eq([0, 1, 2, 3, 4, 5])
  end
end
