describe('Simple Tests') do
  it('should handle simple tests') do
    expect(first_non_repeating_letter('a')).to eq('a')
    expect(first_non_repeating_letter('stress')).to eq('t')
    expect(first_non_repeating_letter('moonmen')).to eq('e')
  end
  it('should handle empty strings') do
    expect(first_non_repeating_letter('')).to eq('')
  end
end