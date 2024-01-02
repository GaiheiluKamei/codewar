describe "Solution" do
  it "Fixed tests" do
    expect(is_anagram('Creative', 'Reactive')).to be(true), 'The word Creative is an anagram of Reactive'
    expect(is_anagram("foefet", "toffee")).to be(true), 'The word foefet is an anagram of toffee'
    expect(is_anagram("Buckethead", "DeathCubeK")).to be(true), 'The word Buckethead is an anagram of DeathCubeK'
    expect(is_anagram("Twoo", "WooT")).to be(true), 'The word Twoo is an anagram of WooT'
    expect(is_anagram("dumble", "bumble")).to be(false), 'Characters do not match for test case dumble, bumble'
    expect(is_anagram("ound", "round")).to be(false), 'Missing characters for test case ound, round'
    expect(is_anagram("apple", "pale")).to be(false), 'Same letters, but different count'
  end
end