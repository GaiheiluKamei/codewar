def testing(actual, expected)
  expect(actual).to eq(expected)
end

describe "Fixed tests" do
  it "should pass fixed tests" do
    testing(revrot("1234", 0), "")
    testing(revrot("", 0), "")
    testing(revrot("1234", 5), "")
    testing(revrot("733049910872815764", 5), "330479108928157")
  end
end