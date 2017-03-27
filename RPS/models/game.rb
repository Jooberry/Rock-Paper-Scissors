class Game

  def initialize(move1, move2)
    @move1 = move1
    @move2 = move2
  end

  def play()
    if @move1 == @move2
      return "DRAW"
    elsif @move1 == "rock" && @move2 == "paper"
      return "PAPER WINS"
    elsif @move1 == "rock" && @move2 == "scissors"
      return "ROCK WINS"
    elsif @move1 == "paper" && @move2 == "rock"
      return "PAPER WINS"
    elsif @move1 == "paper" && @move2 == "scissors"
      return "SCISSORS WINS"
    elsif @move1 == "scissors" && @move2 == "rock"
      return "ROCK WINS"
    elsif @move1 == "scissors" && @move2 == "paper"
      return "SCISSORS WINS"
    end
  end

end