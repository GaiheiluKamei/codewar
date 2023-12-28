describe("Tests") do
  it 'test' do
    expect(count_specMult(3, 200)).to eq(6)
    expect(count_specMult(3, 1000)).to eq(33)
    expect(count_specMult(4, 500)).to eq(2)
    expect(count_specMult(4, 1000)).to eq(4)
  end
end