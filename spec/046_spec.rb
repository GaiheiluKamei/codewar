describe('move function') do
  it('fixed tests') do
    expect(move(0,4)).to eq(8)
    expect(move(3, 6)).to eq(15)
    expect(move(2, 5)).to eq(12)
  end
end