describe "Solution" do
  it "should test for something" do
    expect(tower_builder(1)).to eq(['*'])
    expect(tower_builder(2)).to eq([' * ', '***'])
    expect(tower_builder(3)).to eq(['  *  ', ' *** ', '*****'])
  end
end