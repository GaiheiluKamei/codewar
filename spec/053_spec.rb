describe "Rot13" do
  it "test" do
    expect(rot13("test")).to eq("grfg")
  end

  it "Test" do
    expect(rot13("Test")).to eq("Grfg")
  end
end