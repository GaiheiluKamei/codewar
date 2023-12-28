describe "Fixed tests" do
  it "test" do
    expect(productFib(4895)).to eq([55, 89, true])
    expect(productFib(5895)).to eq([89, 144, false])
  end
end