describe 'Sample tests' do
  it "should pass sample tests" do
    expect(increment_string("foo")).to eq("foo1")
    expect(increment_string("foobar001")).to eq("foobar002")
    expect(increment_string("foobar1")).to eq("foobar2")
    expect(increment_string("foobar00")).to eq("foobar01")
    expect(increment_string("foobar99")).to eq("foobar100")
    expect(increment_string("")).to eq("1")
  end
end