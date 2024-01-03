describe "Basic Tests" do
  it "should pass basic tests" do
    expect(multiplication_table(3)).to eq([[1,2,3],[2,4,6],[3,6,9]])
  end
end