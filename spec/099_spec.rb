describe("nb_dig") do
  it("Basic tests") do
    expect(nb_dig(5750, 0)).to eq(4700)
    expect(nb_dig(11011, 2)).to eq( 9481)
    expect(nb_dig(12224, 8)).to eq( 7733)
    expect(nb_dig(11549, 1)).to eq( 11905)
  end
end