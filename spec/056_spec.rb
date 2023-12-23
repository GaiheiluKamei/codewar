describe "positive_sum" do
  it "works for some examples" do
    expect(positive_sum([1,2,3,4,5])).to eq(15)
    expect(positive_sum([1,-2,3,4,5])).to eq(13)
    expect(positive_sum([-1,2,3,4,-5])).to eq(9)
  end

  it "returns 0 when array is empty" do
    expect(positive_sum([])).to eq(0)
  end

  it "returns 0 when all elements are negative" do
    expect(positive_sum([-1,-2,-3,-4,-5])).to eq(0)
  end
end
