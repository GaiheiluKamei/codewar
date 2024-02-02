describe "Solution" do
  it "Fixed tests" do
      expect(diamonds_and_toads("Ruby and Crystal", :good)).to eq({ruby: 3, crystal: 2 })
      expect(diamonds_and_toads("This string contain some Ruby and some Crystal in it", :good)).to eq({ruby: 4, crystal: 3 })
      expect(diamonds_and_toads("Python and Squirrel", :evil)).to eq({python: 2, squirrel: 2})
      expect(diamonds_and_toads("This string contain some Python and some Squirrel in it", :evil)).to eq({python: 2, squirrel: 6 })
  end
end