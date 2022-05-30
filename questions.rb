
class Questions

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask
    return "What does #{@num1} plus #{@num2} equal?"
  end

  def answer
    @answer = gets.chomp
  end

  def validate
    sum = @num1 + @num2
    return sum == @answer.to_i
    #   return true
    #   correct = true
    #   # puts correct
    #   puts "Yes. you are correct!"
    # else
    #   return false
    #   correct = false
    #   # # puts correct
      # puts "Seriously? No!"
  end

end



