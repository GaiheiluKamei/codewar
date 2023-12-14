describe "Solution" do
  it "Fixed tests" do
    result = ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
    expect(wave("hello")).to eq(result)

    result = ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
    expect(wave("codewars")).to eq(result)

    result = []
    expect(wave("")).to eq(result)

    result = ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
    expect(wave("two words")).to eq(result)

    result = [" Gap ", " gAp ", " gaP "]
    expect(wave(" gap ")).to eq(result)
  end
end