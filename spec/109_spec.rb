require 'bigdecimal'

describe "Example tests" do
  it "Fixed tests" do
    expect(round_to_2_decimal_places(BigDecimal('2'))).to eq(BigDecimal('2'))
    expect(round_to_2_decimal_places(BigDecimal('7.477'))).to eq(BigDecimal('7.48'))
    expect(round_to_2_decimal_places(BigDecimal('-4.999'))).to eq(BigDecimal('-5'))
    expect(round_to_2_decimal_places(BigDecimal('18.123'))).to eq(BigDecimal('18.12'))
    expect(round_to_2_decimal_places(BigDecimal('0'))).to eq(BigDecimal('0'))
    expect(round_to_2_decimal_places(BigDecimal('1.455'))).to eq(BigDecimal('1.46'))
    expect(round_to_2_decimal_places(BigDecimal('-1.455'))).to eq(BigDecimal('-1.46'))
    expect(round_to_2_decimal_places(BigDecimal('1.055'))).to eq(BigDecimal('1.06'))
    expect(round_to_2_decimal_places(BigDecimal('-1.055'))).to eq(BigDecimal('-1.06'))
    expect(round_to_2_decimal_places(BigDecimal('16.765'))).to eq(BigDecimal('16.77'))
    expect(round_to_2_decimal_places(BigDecimal('-16.765'))).to eq(BigDecimal('-16.77'))
    expect(round_to_2_decimal_places(BigDecimal('1.025'))).to eq(BigDecimal('1.03'))
    expect(round_to_2_decimal_places(BigDecimal('-1.025'))).to eq(BigDecimal('-1.03'))
    expect(round_to_2_decimal_places(BigDecimal('16.355'))).to eq(BigDecimal('16.36'))
    expect(round_to_2_decimal_places(BigDecimal('-16.345'))).to eq(BigDecimal('-16.35'))
    expect(round_to_2_decimal_places(BigDecimal('-1.1949999999999999999999999999'))).to eq(BigDecimal('-1.19'))
    expect(round_to_2_decimal_places(BigDecimal('-1.1950000000000000000000000001'))).to eq(BigDecimal('-1.2'))
    expect(round_to_2_decimal_places(BigDecimal('1.1949999999999999999999999999'))).to eq(BigDecimal('1.19'))
    expect(round_to_2_decimal_places(BigDecimal('1.1950000000000000000000000001'))).to eq(BigDecimal('1.2'))
    expect(round_to_2_decimal_places(BigDecimal('-1.1849999999999999999999999999'))).to eq(BigDecimal('-1.18'))
    expect(round_to_2_decimal_places(BigDecimal('-1.1850000000000000000000000001'))).to eq(BigDecimal('-1.19'))
    expect(round_to_2_decimal_places(BigDecimal('1.1849999999999999999999999999'))).to eq(BigDecimal('1.18'))
    expect(round_to_2_decimal_places(BigDecimal('1.1850000000000000000000000001'))).to eq(BigDecimal('1.19'))
  end
end
