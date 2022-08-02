require "./player.rb"
require "./computer.rb"
require "./colors.rb"

class Game 
  def initialize
    # Welcome message 

    puts <<-MESSAGE
      Welcome to Mastermind by Bsoalio

      **Each red color means one the guessed digit is correct, but is in the wrong place

      **Each green color means one the guessed digit is correct and in the right place

      MESSAGE
    
    @correct_input = false
    until @correct_input
      puts "Press 1 to be Code maker or 2 to be Code breaker: "
      puts " "
      @player_choice = gets.chomp.to_i
      
      @correct_input = true if @player_choice == 1 || @player_choice == 2
    end


    @player = Player.new 
    @computer = Computer.new
    @range_choice = [1, 2, 3, 4, 5, 6]

    # generate the code to break
    if @player_choice == 1
      @code = @player.generate_code
    else
      @code = @computer.generate_code
    end
  end

  # Print Color funtion
  def print_color(num)
    case num
    when 8
      print "   ".bg_green
      print "\n"
    when 9
      print "   ".bg_red
      print "\n"
    when 0
      print "   "
      print "\n"
    end
  end

  # Play function 
  def play
    @result = []
    @correct_input = false
    until @correct_input 
      # Ask to guess the code
      if @player_choice == 1
      @guess_code = @computer.guess_code
      else
      @guess_code = @player.guess_code
      end
      
      # check if the guess code meet the criterion
      if @guess_code == @guess_code.intersection(@range_choice) && @guess_code.length == 4
        @correct_input = true 
      end
    end

    # Check the guess
    for i in 0..3
     if @guess_code[i] == @code[i]
      # the guess digit is included and in the right place
      @result[i] = 8
     elsif @code.include?(@guess_code[i])
      # the guess digit is include in the code in the wrong place
      @result[i] = 9
     else
      # the guess is wrong
      @result[i] = 0
     end
    end

    # print the result with the color peg
    for i in 0..3
      print_color(@result[i])
    end
  end
  

  def code_broke?
   for i in 0..3
    if @result[i] != 8
     return false
     break
    end
   end
   puts "Congratulations, " + "#{@player_choice == 1 ? 'Computer' : 'you'} "  + "broke the code"
   return true
  end
end