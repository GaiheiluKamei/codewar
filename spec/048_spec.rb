describe "Solution" do
  it "Fixed tests" do
    expect(count_chars("aba")).to eq({"a" => 2, "b" => 1})
    expect(count_chars("")).to eq({})
  end
end