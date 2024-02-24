describe "Basic Tests" do
  it 'tests' do
    expect('test case'.camelcase).to eq('TestCase')
    expect('camel case method'.camelcase).to eq('CamelCaseMethod')
    expect('say hello '.camelcase).to eq('SayHello')
    expect(' camel case word'.camelcase).to eq('CamelCaseWord')
  end
end