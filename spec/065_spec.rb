describe "Fixed tests" do
  it "test" do
    expect(bouncing_ball(3, 0.66, 1.5)).to eq(3)
    expect(bouncing_ball(30, 0.66, 1.5)).to eq(15)
    expect(bouncing_ball(30, 0.75, 1.5)).to eq(21)
    expect(bouncing_ball(30, 0.4, 10)).to eq(3)
    expect(bouncing_ball(40, 1, 10)).to eq(-1)
    expect(bouncing_ball(-5, 0.66, 1.5)).to eq(-1)
  end
end