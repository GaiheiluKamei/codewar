describe "Sample tests" do
  it "Some examples" do
    expect(balance("", "")).to eq("Balance")
    expect(balance("!!", "??")).to eq("Right")
    expect(balance("!??", "?!!")).to eq("Left")
    expect(balance("!?!!", "?!?")).to eq("Left")
    expect(balance("!!???!????", "??!!?!!!!!!!")).to eq("Balance")
  end
end