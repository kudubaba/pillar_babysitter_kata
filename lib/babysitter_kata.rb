class Babysitter
  attr_accessor :num1, :num2, :num3
  def initialize(num1, num2, num3)
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end
end

class Payscale

  def initialize(pay1, pay2, pay3)
    @pay1 = pay1
    @pay2 = pay2
    @pay3 = pay3
  end

    def add
      @pay1 + @pay2 + @pay3
    end
  end
