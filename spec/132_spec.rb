describe "Solution" do
  it "Fixed tests" do
    expect(pig_it('Pig latin is cool')).to eq('igPay atinlay siay oolcay')
    expect(pig_it('This is my string')).to eq('hisTay siay ymay tringsay')
  end
end