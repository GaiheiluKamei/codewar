describe "Solution" do
  it "Fixed tests" do
    expect(is_isogram("Dermatoglyphics")).to eq(true)
    expect(is_isogram("isogram")).to eq(true )
    expect(is_isogram("aba")).to eq(false)
    expect(is_isogram("moOse")).to eq(false)
    expect(is_isogram("isIsogram")).to eq(false)
    expect(is_isogram("")).to eq(true)
  end
end