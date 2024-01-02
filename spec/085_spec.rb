describe "Solution" do
  it "Fixed tests" do
    a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
    expect(dirReduc(a)).to eq(["WEST"])

    u=["NORTH", "WEST", "SOUTH", "EAST"]
    expect(dirReduc(u)).to eq(["NORTH", "WEST", "SOUTH", "EAST"])
  end
end