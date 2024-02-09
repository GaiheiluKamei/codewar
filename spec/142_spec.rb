describe "Basic tests" do
  arr = [1, 2, 4, 6]
  proc1 = proc { | i | i * 2 }
  proc2 = proc { | i | i + 1 }
  it 'test' do
    expect(array_procs_2(arr, proc1, proc2)).to eq([2, 3, 8, 7])
    expect(array_procs_2(arr, proc2, proc1)).to eq([2, 4, 5, 12])
    expect(array_procs_2(arr, proc1)).to eq([2, 4, 8, 12])
    expect(array_procs_2(arr, proc2)).to eq([2, 3, 5, 7])
    expect(array_procs_2(arr)).to eq([1, 2, 4, 6])
  end
end