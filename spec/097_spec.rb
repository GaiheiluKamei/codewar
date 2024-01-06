describe "Fixed tests" do
  it "should pass fixed tests" do
    expect(replace("Hi!")).to eq("H!!")
    expect(replace("!Hi! Hi!")).to eq("!H!! H!!")
    expect(replace("aeiou")).to eq("!!!!!")
    expect(replace("ABCDE")).to eq("!BCD!")
  end
end