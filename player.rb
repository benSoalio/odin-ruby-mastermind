class Player 
  def initialize
    # Initialize the player with 
    puts "Enter your name: "
    @name = gets.chomp

    @range_choice = [1, 2, 3, 4, 5, 6]
  end

  def guess_code
    puts "Your guess code must only have 4 digits included in [1, 2, 3, 4, 5, 6]"
    puts " "
    puts "Enter your guess code: "
    @guess_code = gets.chomp.to_i.digits.reverse
  end

  def generate_code
    @correct_input = false
    until @correct_input
      puts "Your code must only have 4 digits included in [1, 2, 3, 4, 5, 6]"
      puts " "
      puts "Enter the code to break: "
      @code = gets.chomp.to_i.digits.reverse

      # check if the guess code meet the criterion
      if @code == @code.intersection(@range_choice) && @code.length == 4
        @correct_input = true 
      end
    end
    @code
  end
end