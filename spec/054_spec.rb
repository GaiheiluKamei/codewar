describe "find_next_square" do
  it "should return the next square for perfect squares" do
    expect(find_next_square(121)).to eq(144)
    expect(find_next_square(625)).to eq(676)
    expect(find_next_square(319225)).to eq(320356)
    expect(find_next_square(15241383936)).to eq(15241630849)
  end

  it "should return -1 for numbers which aren't perfect squares" do
    expect(find_next_square(155)).to eq(-1)
    expect(find_next_square(342786627)).to eq(-1)
  end
end
