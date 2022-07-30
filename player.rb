class Player 
  def initialize
    # Initialize the player with 
    puts "Enter your name: "
    @name = gets.chomp
  end

  def guess_code
    puts "Your guess code must only have 4 digits included in [1, 2, 3, 4, 5, 6]"
    puts " "
    puts "Enter your guess code: "
    @guess_code = gets.chomp.to_i.digits.reverse
  end

  def generate_code
    puts "Your code must only have 4 digits included in [1, 2, 3, 4, 5, 6]"
    puts " "
    puts "Enter the code to break: "
    @code = gets.chomp.to_i.digits.reverse
  end
end