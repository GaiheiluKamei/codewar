def testing_124(actual, expected)
  expect(actual).to eq(expected)
end

describe("wallpaper") do
  it("Basic tests") do
    testing_124(get_count(123),2)
    testing_124(get_count(1230),5)
    testing_124(get_count(1),0)
    testing_124(get_count(1111111111),25)
  end
end