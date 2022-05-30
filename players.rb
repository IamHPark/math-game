
class Players
  attr_accessor :name, :life

  def initialize(name)
    @name = name
    @life = 3
  end

  def decrement_life
    @life -= 1
  end

end

