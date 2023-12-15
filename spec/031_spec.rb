describe('fixed tests') do
  it('should be 0') { expect(goals(0,0,0)).to  eq(0) }
  it('should be 58') { expect(goals(43, 10, 5)).to eq(58) }
end