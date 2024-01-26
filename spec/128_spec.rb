describe "Solution" do
  it "Fixed tests" do
    expect(Node.new.height).to eq(0)
    expect(Node.new(Node.new(Node.new(nil,Node.new)),Node.new(Node.new)).height).to eq(3)
    expect(Node.new(Node.new(Node.new(Node.new,Node.new)),Node.new(nil,Node.new(nil,Node.new(Node.new)))).height).to eq(4)
  end
end