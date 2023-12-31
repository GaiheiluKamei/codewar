describe('Basic Tests') do
  it 'test' do
    expect(encrypt("This is a test!", 0)).to eq("This is a test!")
    expect(encrypt("This is a test!", 1)).to eq("hsi  etTi sats!")
    expect(encrypt("This is a test!", 2)).to eq("s eT ashi tist!")
    expect(encrypt("This is a test!", 3)).to eq(" Tah itse sits!")
    expect(encrypt("This is a test!", 4)).to eq("This is a test!")
    expect(encrypt("This is a test!", -1)).to eq("This is a test!")
    expect(encrypt("This kata is very interesting!", 1)).to eq("hskt svr neetn!Ti aai eyitrsig")

    expect(decrypt("This is a test!", 0)).to eq("This is a test!")
    expect(decrypt("hsi  etTi sats!", 1)).to eq("This is a test!")
    expect(decrypt("s eT ashi tist!", 2)).to eq("This is a test!")
    expect(decrypt(" Tah itse sits!", 3)).to eq("This is a test!")
    expect(decrypt("This is a test!", 4)).to eq("This is a test!")
    expect(decrypt("This is a test!", -1)).to eq("This is a test!")
    expect(decrypt("hskt svr neetn!Ti aai eyitrsig", 1)).to eq("This kata is very interesting!")
    expect(encrypt("", 0)).to eq("")
    expect(decrypt("", 0)).to eq("")
  end
end