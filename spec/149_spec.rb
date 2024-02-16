describe "football rankings" do
  it 'test' do
    football = Football.new(['Alabama', 'Nebraska', 'Oklahoma'])
    expect(football.rankify("Nebraska vs Alabama tonight at 7!")).to eq("#2 Nebraska vs #1 Alabama tonight at 7!")
  end
end