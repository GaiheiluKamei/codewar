describe "Solution" do
  it "Fixed tests" do
    expect { Code.a }.to raise_error
    expect { Code.a = 10 }.not_to raise_error
    expect( Code.a == 10 ).to be_truthy
  end
end