describe "Gimme" do
  it "Fixed tests" do
    expect(gimme([2, 3, 1])).to eq(0)
    expect(gimme([5, 10, 14])).to eq(1)
    expect(gimme([1, 3, 4])).to eq(1)
    expect(gimme([15, 10, 14])).to eq(2)
    expect(gimme([-0.410, -23, 4])).to eq(0)
    expect(gimme([-15, -10, 14])).to eq(1)
  end
end