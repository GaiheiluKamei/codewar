describe "Minimum reduction" do
  it "Basic tests" do
    expect(jumbled_string("Such Wow!", 1)).to eq("Sc o!uhWw")
    expect(jumbled_string("better example", 2)).to eq("bexltept merae")
    expect(jumbled_string("qwertyuio", 2)).to eq("qtorieuwy")
    expect(jumbled_string("Greetings", 8)).to eq("Gtsegenri")
  end
end