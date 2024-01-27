describe "Narcissistic Function" do
  it "should find small numbers are all narcissistic" do
    expect(narcissistic?(5)).to be(true)
  end

  it "should find these numbers are narcissistic" do
    expect(narcissistic?( 153 )).to be(true)
  end

  it "should find these numbers are NOT narcissistic" do
    expect(narcissistic?( 1633 )).to be(false)
  end
end