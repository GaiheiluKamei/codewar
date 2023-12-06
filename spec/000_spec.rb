describe "Basic Tests" do
  it "should pass basic tests" do
    expect(are_you_playing_banjo("Martin")).to eq("Martin does not play banjo")
    expect(are_you_playing_banjo("Rikke")).to eq("Rikke plays banjo")
    expect(are_you_playing_banjo("bravo")).to eq("bravo does not play banjo")
    expect(are_you_playing_banjo("rolf")).to  eq("rolf plays banjo")
  end
end