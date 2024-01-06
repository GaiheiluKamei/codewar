describe "greet" do
  it "Fixed tests" do
    expect(greet_98("Ryan")).to eq("Hello, Ryan how are you doing today?")
    expect(greet_98("Shingles")).to eq("Hello, Shingles how are you doing today?")
  end
end