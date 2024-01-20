describe("Sorting array by liquid density.") do
  it("Should be able to sort 3 liquids") do
    expect(separate_liquids([['H', 'H', 'W', 'O'],['W','W','O','W'],['H','H','O','O']])).to eq([['O', 'O', 'O', 'O'], ['W','W','W','W'],['H','H','H','H']])
  end
  it("Should be able to handle 4 liquids") do
    expect(separate_liquids([['A','A','O','H'],['A', 'H', 'W', 'O'],['W','W','A','W'],['H','H','O','O']])).to eq([['O','O', 'O', 'O'],['A', 'A', 'A', 'A'],['W','W','W','W'],['H','H','H','H']])
  end
  it("Should be able to handle one row") do
    expect(separate_liquids([['A','H','W','O']])).to eq([['O','A','W','H']])
  end
  it("Should be able to handle one column") do
    expect(separate_liquids([['A'],['H'],['W'],['O']])).to eq([['O'],['A'],['W'],['H']])
  end
  it("Should be able to handle empty array") do
    expect(separate_liquids([])).to eq([])
  end
end