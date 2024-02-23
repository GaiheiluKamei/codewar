describe "Example Kata" do
  it "should return a correct object" do
    expect(transform('a.b', 'value')).to eq({a: {b: 'value'}})
    expect(transform('a.b.c', 'value')).to eq({a: {b: {c:'value'}}})
    expect(transform('a.b.c.d', 'value')).to eq({a: {b: {c: {d: 'value'}}}})
    expect(transform('a.b.c.d.e', 'value')).to eq({a: {b: {c: {d: {e: 'value'}}}}})
  end
end