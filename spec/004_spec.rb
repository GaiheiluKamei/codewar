describe "Solution" do
  it("nil or Empty") do
    expect(sum_array(nil)).to eq(0)
    expect(sum_array([])).to eq(0)
  end
  it("Only one Element") do
    expect(sum_array([3])).to eq(0)
    expect(sum_array([-3])).to eq(0)
  end
  it("Only two Element") do
    expect(sum_array([ 3, 5])).to eq(0)
    expect(sum_array([-3, -5])).to eq(0)
  end
  it("Real Tests") do
    expect(sum_array([6, 2, 1, 8, 10])).to eq(16)
    expect(sum_array([6, 0, 1, 10, 10])).to eq(17)
    expect(sum_array([-6, -20, -1, -10, -12])).to eq(-28)
    expect(sum_array([-6, 20, -1, 10, -12])).to eq(3)
  end
end