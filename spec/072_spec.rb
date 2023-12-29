describe "Basic Cases" do
  it "Some Cases" do
    expect(find_mult_3(362)).to eq([4, 63])
    expect(find_mult_3(6063)).to eq([25, 6630])
    # expect(find_mult_3(7766553322)).to eq([55510, 766553322]) # 占用内存较高
  end
end