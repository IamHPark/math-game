require './players'
require './questions'
require './rounds'

class Games

  def initialize
    @p1 = Players.new("Player 1")
    @p2 = Players.new("Player 2")
    @turn = @p1
  end

  def keep_round?
    while @p1.life > 0 && @p2.life > 0
      round = Rounds.new(@turn)
      puts round.round
      puts "P1: #{@p1.life}/3 vs P2: #{@p2.life}/3"
      #change the turn
      if @turn.name == @p1.name
        @turn = @p2
      else
        @turn = @p1
      end
    end

    if @p1.life == 0
      puts "Player 2 wins with a score of #{@p2.life}/3"
    elsif @p2.life == 0
      puts "Player 1 wins with a score of #{@p1.life}/3"
    end

    round.game_end
  end
end
