class Questions
  attr_accessor :num1,

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    puts "What does #{@num1} plus #{@num2} equal?"
  end

  def answer
    @answer = gets.chomp
  end

  def correct?
    sum = @num1 + @num2
    if sum == @answer.to_i
      puts "Yes. you are correct!"
    else
      puts "Seriously? No!"
    end
  end

end



