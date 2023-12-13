describe "Basic Tests" do
  it "should pass basic tests" do
    expect(str_count('Hello', 'o')).to eq(1)
    expect(str_count('Hello', 'l')).to eq(2)
    expect(str_count('', 'z')).to eq(0)
  end
end
