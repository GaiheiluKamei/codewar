describe 'Solution' do
  it "Fixed tests" do
    expect(feast("great blue heron", "garlic naan")).to eq(true)
    expect(feast("chickadee", "chocolate cake")).to eq(true)
    expect(feast("brown bear", "bear claw")).to eq(false)
  end
end