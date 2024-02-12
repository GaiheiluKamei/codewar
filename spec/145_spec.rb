describe "Sample Test Cases" do
  it "Valid IP Addresses" do
    expect(is_valid_ip('1.1.1.1'))
    expect(is_valid_ip('1.2.3.4'))
    expect(is_valid_ip('11.254.13.24'))
  end

  it "Invalid IP Addresses" do
    expect(!is_valid_ip('123,45,67,89'))
    expect(!is_valid_ip(' 1.2.3.4'))
    expect(!is_valid_ip('1.2.3.4 '))
    expect(!is_valid_ip('023.45.67.89'))
    expect(!is_valid_ip('01.2.3.4'))
    expect(!is_valid_ip('11.256.103.04 '))
    expect(!is_valid_ip('-1.2.3.4'))
    expect(!is_valid_ip('1.2.3.4.5'))
  end

end