begin
  alias sum_digits sumDigits
rescue
end

describe "sum_digits" do
  it "Fixed Tests" do
    expect(sum_digits(10)).to eq(1)
    expect(sum_digits(99)).to eq(18)
    expect(sum_digits(-32)).to eq(5)
  end
end