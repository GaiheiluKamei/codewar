describe "Check the Exam" do
  it "Basic tests" do
    expect(check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"])).to eq(6)
    expect(check_exam(["a", "a", "c", "b"], ["a", "a", "b",  ""])).to eq(7)
    expect(check_exam(["a", "a", "b", "c"], ["a", "a", "b", "c"])).to eq(16)
    expect(check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"])).to eq(0)
  end
end