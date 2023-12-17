describe "find_even_index" do
  it "should pass fixed tests" do
    expect(find_even_index([1,2,3,4,3,2,1])).to eq(3)
    expect(find_even_index([1,100,50,-51,1,1])).to eq(1)
    expect(find_even_index([1,2,3,4,5,6])).to eq(-1)
    expect(find_even_index([20,10,30,10,10,15,35])).to eq(3)
    expect(find_even_index([20,10,-80,10,10,15,35])).to eq(0)
    expect(find_even_index([10,-80,10,10,15,35,20])).to eq(6)
    expect(find_even_index(Array(1..100))).to eq(-1)
    expect(find_even_index([0,0,0,0,0])).to eq(0)
    expect(find_even_index([-1,-2,-3,-4,-3,-2,-1])).to eq(3)
    expect(find_even_index(Array(-100..-1))).to eq(-1)
  end
end