describe("Basic tests") do
  it "test" do
    expect(sort_array([5, 3, 2, 8, 1, 4, 11])).to eq([1, 3, 2, 8, 5, 4, 11])
    expect(sort_array([2, 22, 37, 11, 4, 1, 5, 0])).to eq([2, 22, 1, 5, 4, 11, 37, 0])
    expect(sort_array([1, 111, 11, 11, 2, 1, 5, 0])).to eq([1, 1, 5, 11, 2, 11, 111, 0])
    expect(sort_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])).to eq([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
    expect(sort_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    expect(sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5])).to eq([0, 1, 2, 3, 4, 5, 8, 7, 6, 9])
    expect(sort_array([])).to eq([])
    expect(sort_array([19])).to eq([19])
    expect(sort_array([2])).to eq([2])
    expect(sort_array([7,5])).to eq([5,7])
  end
end