describe "Example tests" do
  arr = [1, 2, 4, 6]
  proc1 = proc { | i | i * 2 }
  proc2 = proc { | i | i + 1 }

  it 'test' do
    expect(array_procs(arr, proc1, proc2)).to eq([3, 5, 9, 13])
    expect(array_procs(arr, proc2, proc1)).to eq([4, 6, 10, 14])
    expect(array_procs(arr, proc2)).to eq([2, 3, 5, 7])
    expect(array_procs(arr)).to eq([1, 2, 4, 6])
  end
end