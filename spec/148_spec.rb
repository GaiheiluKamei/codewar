describe("example tests") do

  def test(n, expected)
    expect(solution_148(n)).to eq(expected), "Expected #{expected}, got #{solution(n)}"
  end

  it("solution") do
    test(10, 23)
    test(20, 78)
    test(200, 9168)
  end
end