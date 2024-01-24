describe "Hash#dig should return a value" do
  it 'test' do
    expect({a: 1}.safe_dig(:a)).to eq(1)
  end
end

describe "Hash#dig should return a nested value" do
  it 'test' do
    expect({a: {b: 2}}.safe_dig(:a, :b)).to eq(2)
    expect({a: {b: {c: 3}}}.safe_dig(:a, :b, :c)).to eq(3)
    expect({a: {b: {c: {d: 4}}}}.safe_dig(:a, :b, :c, :d)).to eq(4)
  end
end

describe "Hash#dig returns nil when last key missing" do
  it 'test' do
    expect({a: {b: 2}}.safe_dig(:a, :b, :c, :d)).to eq(nil)
  end
end