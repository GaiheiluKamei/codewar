describe "Example test cases" do
  it "should pass fixed tests" do
    expect(repeat_str(3, "*")).to eq("***")
    expect(repeat_str(5, "#")).to eq("#####")
    expect(repeat_str(2, "ha ")).to eq("ha ha ")
  end
end
