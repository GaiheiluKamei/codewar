describe "Example Tests" do
  it "Some Examples" do
    expect(sum_dig_pow(1, 10)).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9])
    expect(sum_dig_pow(1, 100)).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 89])
    expect(sum_dig_pow(10, 100)).to eq( [89])
    expect(sum_dig_pow(90, 100)).to eq([])
    expect(sum_dig_pow(90, 150)).to eq([135])
    expect(sum_dig_pow(50, 150)).to eq([89, 135])
    expect(sum_dig_pow(10, 150)).to eq([89, 135])
  end
end