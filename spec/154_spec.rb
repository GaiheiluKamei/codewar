describe 'basic tests' do
  it "should pass fixed tests" do
    expect(create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])).to eq("(123) 456-7890")
    expect(create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])).to eq("(111) 111-1111")
    expect(create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])).to eq("(123) 456-7890")
    end
end