describe "Solution" do
  it "Fixed tests" do
    #expect(permutations('a').sort).to eq(['a']);
    expect(permutations('ab').sort).to eq(['ab', 'ba'])
    expect(permutations('aabb').sort).to eq(['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa'])
  end
end