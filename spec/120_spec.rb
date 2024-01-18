describe "Basic Tests" do
  it "Small Values of n" do
    expect(find_spec_partition(10, 4, 'max')).to eq([3, 3, 2, 2])
    expect(find_spec_partition(10, 4, 'min')).to eq([7, 1, 1, 1])
  end
end