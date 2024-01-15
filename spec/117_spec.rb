describe "finding the nexus" do
  it 'test' do
    expect(rle("")).to eq([])
    expect(rle("abc")).to eq([[1, 'a'], [1, 'b'], [1, 'c']])
    expect(rle("aab")).to eq([[2, 'a'], [1, 'b']])
    expect(rle("hello world!")).to eq([[1, 'h'], [1, 'e'], [2, 'l'], [1, 'o'], [1, ' '], [1, 'w'], [1, 'o'], [1, 'r'], [1, 'l'], [1, 'd'], [1, '!']])
    expect(rle("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbb")).to eq([[34, 'a'], [3, 'b']])
    expect(rle("WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWBWWWWWWWWWWWWWW")).to eq([[12, 'W'], [1, 'B'], [12, 'W'], [3, 'B'], [24, 'W'], [1, 'B'], [14, 'W']])
  end
end