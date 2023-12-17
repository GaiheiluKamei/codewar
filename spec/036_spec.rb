describe "Welcome! Translation" do
  it "should translate input" do
    expect(greet('english')).to eq('Welcome')
    expect(greet('dutch')).to eq('Welkom')
    expect(greet('IP_ADDRESS_INVALID')).to eq('Welcome')
  end
end