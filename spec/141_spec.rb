describe "Simple tests" do
  it "should pass simple tests" do
    expect(find_outlier([0, 1, 2])).to eq(1)
    expect(find_outlier([1, 2, 3])).to eq(2)
  end
end
