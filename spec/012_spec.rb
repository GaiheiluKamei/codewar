describe 'rock paper scissors' do
  it 'player 1 win'  do
    expect(rps('rock', 'scissors')).to  eq("Player 1 won!")
    expect(rps('scissors', 'paper')).to  eq("Player 1 won!")
    expect(rps('paper', 'rock')).to  eq("Player 1 won!")
  end
  it 'player 2 win' do
    expect(rps('scissors', 'rock')).to  eq("Player 2 won!")
    expect(rps('paper', 'scissors')).to  eq("Player 2 won!")
    expect(rps('rock', 'paper')).to  eq("Player 2 won!")
  end
  it 'draw' do
    expect(rps('rock', 'rock')).to  eq('Draw!')
    expect(rps('scissors', 'scissors')).to  eq('Draw!')
    expect(rps('paper', 'paper')).to  eq('Draw!')
  end
end