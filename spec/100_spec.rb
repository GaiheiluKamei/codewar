describe "Fix String Case" do
  it "Basic tests" do
    expect(solve("code")).to eq("code")
    expect(solve("CODe")).to eq("CODE")
    expect(solve("COde")).to eq("code")
    expect(solve("Code")).to eq("code")
  end
end