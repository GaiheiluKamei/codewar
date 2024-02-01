describe "Solution" do
  it "pass basic tests" do
    expect(divNum(15,30)).to eq(24)
    expect(divNum(1,2)).to eq(2)
    expect(divNum(1,2)).to eq(2)
    expect(divNum(52,156)).to eq(120)
    expect(divNum(159,4)).to eq("Error")
    expect(divNum(15,48)).to eq(48)
  end
end