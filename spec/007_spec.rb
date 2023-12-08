describe("nb_year") do
  it("Basic tests") do
    expect(nb_year(1500, 5, 100, 5000)).to eq(15)
    expect(nb_year(1500000, 2.5, 10000, 2000000)).to eq(10)
    expect(nb_year(1500000, 0.25, 1000, 2000000)).to eq(94)
  end
end