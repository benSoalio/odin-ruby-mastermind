class Computer
  def initialize
    @range_choice = [1, 2, 3, 4, 5, 6]
  end

  def guess_code
    @guess_code = @range_choice.sample(4)
  end

  def generate_code
    @code = @range_choice.sample(4)
  end
end