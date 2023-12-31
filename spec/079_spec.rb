describe "Basic Tests" do
  it "Simple Cases" do
    expect(delete_nth([20,37,20,21], 1)).to eq([20,37,21])
    expect(delete_nth([1,1,3,3,7,2,2,2,2], 3)).to eq([1, 1, 3, 3, 7, 2, 2, 2])
  end
end