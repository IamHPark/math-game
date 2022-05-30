require './questions'

class Rounds

  def initialize(player)
    @q = Questions.new
    @player = player
  end

  def round
    puts "#{@player.name}: #{@q.ask}"
    @q.answer
    if @q.validate
      return "#{@player.name}: Yes! You are correct."
    else
      @player.decrement_life
      return "#{@player.name}: Seriously? No!"
    end
  end

  def game_end
    puts "Good bye!"
  end
end
