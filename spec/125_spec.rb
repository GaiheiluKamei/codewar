describe("tests") do
  def do_test(input, expected)
    actual = do_math(input)
    message = "expected %d but got %d for string \"%s\"" % [expected, actual, input]
    expect(actual).to eq(expected), message
  end

  it('sample tests') do
    do_test("24z6 1z23 y369 89z 900b", 1414)
    do_test("24z6 1x23 y369 89a 900b", 1299)
    do_test("10a 90x 14b 78u 45a 7b 34y", 60)
    do_test("111a 222c 444y 777u 999a 888p", 1459)
    do_test("1z 2t 3q 5x 6u 8a 7b", 8)
  end
end