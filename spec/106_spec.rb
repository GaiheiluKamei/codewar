describe "Basic Tests" do
  it "It should works for basic tests." do
    expect(reverse_parentheses("a(bc)de")).to eq("acbde")
    expect(reverse_parentheses("a(bcdefghijkl(mno)p)q")).to eq("apmnolkjihgfedcbq")
    expect(reverse_parentheses("co(de(war)s)")).to eq("coswared")
    expect(reverse_parentheses("Code(Cha(lle)nge)")).to eq("CodeegnlleahC")
  end
end