describe "Solution" do
  it "should sum primes" do
    expect(sum_of_primes(33)).to eq(160)
    expect(sum_of_primes(34)).to eq(160)
    expect(sum_of_primes(355)).to eq(11240)
    expect(sum_of_primes(1000)).to eq(76127)
    expect(sum_of_primes(2000)).to eq(277050)
    expect(sum_of_primes(3000)).to eq(593823)
    expect(sum_of_primes(3555)).to eq(814006)
    expect(sum_of_primes(4000)).to eq(1013507)
    expect(sum_of_primes(5000)).to eq(1548136)
  end
end