describe "Fixed tests" do
  it "Sample tests" do
    expect(sum_str("4","5")).to eq("9")
    expect(sum_str("34","5")).to eq("39")
  end

  it "Tests with empty strings" do
    expect(sum_str("9","")).to eq("9")
    expect(sum_str("","9")).to eq("9")
    expect(sum_str("","") ).to eq("0")
  end
end
