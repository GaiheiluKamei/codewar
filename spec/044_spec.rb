describe 'Solution' do
  it "Fixed tests" do
    expect(domain_name("http://google.com")).to eq("google")
    expect(domain_name("http://google.co.jp")).to eq("google")
    expect(domain_name("www.xakep.ru")).to eq("xakep")
    expect(domain_name("https://youtube.com")).to eq("youtube")
  end
end