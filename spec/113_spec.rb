describe "Minimum reduction" do
  testc = [
    [[9,13,21,1,3,5,7],2],
    [[9,13,21,1,3,3,7],3],
    [[6,25,35,38],1],
    [[1,3,1,2,2,5,5,5,2,2],5],
    [[1,3,1,1,3,3,5,5,1,2,2,1,2,2,5,5,5,2,2],10]
  ]
  it "Basic tests" do
    testc.each{|a,b| expect(min_remove(a)).to eq(b)}
  end
end