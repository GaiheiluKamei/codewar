describe("Basic tests") do
  expect(queue_time([], 1)).to eq(0)
  expect(queue_time([5], 1)).to eq(5)
  expect(queue_time([2], 5)).to eq(2)
  expect(queue_time([1,2,3,4,5], 1)).to eq(15)
  expect(queue_time([1,2,3,4,5], 100)).to eq(5)
  expect(queue_time([2,2,3,3,4,4], 2)).to eq(9)
end