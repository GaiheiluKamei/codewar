describe "Solution" do
  it "Fixed tests" do
    expect(row_sum_odd_numbers(1)).to eq(1)
    expect(row_sum_odd_numbers(2)).to eq(8)
    expect(row_sum_odd_numbers(13)).to eq( 2197)
    expect(row_sum_odd_numbers(19)).to eq( 6859)
    expect(row_sum_odd_numbers(41)).to eq( 68921)
  end
end