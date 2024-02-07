describe "Fixed tests" do
  it "should pass fixed tests" do
    expect(spin_words("Welcome")).to eq("emocleW")
    expect(spin_words("Hey fellow warriors")).to eq("Hey wollef sroirraw")
  end
end
