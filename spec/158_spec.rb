describe "get_average" do
  it "works for some examples" do
    expect(get_average([2, 2, 2, 2])).to eq(2)
    expect(get_average([1, 5, 87, 45, 8, 8])).to eq(25)
    expect(get_average([2,5,13,20,16,16,10])).to eq(11)
    expect(get_average([1,2,15,15,17,11,12,17,17,14,13,15,6,11,8,7])).to eq(11)
  end
end