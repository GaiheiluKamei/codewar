describe("printer_error") do
  it("Basic tests") do
    s="aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
    expect(printer_error(s)).to eq("3/56")
  end
end