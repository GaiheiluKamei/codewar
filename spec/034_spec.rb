describe "Basic Tests" do
  it "should pass basic tests" do
    expect(other_angle(30, 60)).to eq(90)
    expect(other_angle(60, 60)).to eq(60)
    expect(other_angle(43, 78)).to eq(59)
    expect(other_angle(10, 20)).to eq(150)
  end
end