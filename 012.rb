=begin

Question: Rock Paper Scissors!

Description:
  Let's play! You have to return which player won! In case of a draw return `Draw!`.

Examples(Input1, Input2 --> Output):
  "scissors", "paper" --> "Player 1 won!"
  "scissors", "rock" --> "Player 2 won!"
  "paper", "paper" --> "Draw!"

=end

def rps(p1, p2)
  return "Draw!" if p1 == p2
  return "Player 1 won!" if (p1 == "scissors" && p2 == "paper") || (p1 == "rock" && p2 == "scissors") || (p1 == "paper" && p2 == "rock")
  "Player 2 won!"
end

=begin

Others' solutions:

def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end

def rps(p1, p2)
  winning_moves = {
    'rock' => 'scissors',
    'scissors' => 'paper',
    'paper' => 'rock'
  }
  return 'Draw!' if p1 == p2
  winning_moves[p1] == p2 ? 'Player 1 won!' : 'Player 2 won!'
end

def rps(p1, p2)
  return 'Draw!' if p1 == p2
  results = [['scissors', 'paper'], ['paper', 'rock'], ['rock', 'scissors']]
  return results.include?([p1, p2]) ? 'Player 1 won!' : 'Player 2 won!'
end

def rps(p1, p2)
  beatmap = {'paper' => 'rock', 'rock' => 'scissors', 'scissors' => 'paper'}
    case p2
      when beatmap[p1] then 'Player 1 won!'
      when beatmap.invert[p1] then 'Player 2 won!'
      else 'Draw!'
    end
end

def rps(p1, p2)
  beats = { 'rock' => 'scissors', 'scissors' => 'paper', 'paper' => 'rock' }
  p1 == p2 ? 'Draw!' : "Player #{beats[p1] == p2 ? 1 : 2} won!"
end

def rps(p1, p2)
  ((p1[0]+p2[0]).match? /pr|rs|sp/) ? 'Player 1 won!' : p1 == p2 ? 'Draw!' : 'Player 2 won!'
end

=end