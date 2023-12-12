describe "set_alarm" do
  it "returns correct result for all input values" do
    expect(set_alarm(true, true)).to be(false)
    expect(set_alarm(false, true)).to be(false)
    expect(set_alarm(false, false)).to be(false)
    expect(set_alarm(true, false)).to be(true)
  end
end
