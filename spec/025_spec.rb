describe "Fixed Tests" do
  it "Fixed Test Cases" do
    expect(update_light('green')).to eq('yellow')
    expect(update_light('yellow')).to eq('red')
    expect(update_light('red')).to eq('green')
  end
end
