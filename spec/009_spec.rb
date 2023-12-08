describe "Solution" do
  it "Fixed tests" do
    expect(get_volume_of_cuboid(2, 3, 4)).to  eq(24)
    expect(get_volume_of_cuboid(4, 6, 8)).to  eq(192)
    expect(get_volume_of_cuboid(7, 14, 26)).to  eq(2548)
  end
end