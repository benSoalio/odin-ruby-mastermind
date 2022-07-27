require "./game.rb"

def main 
  game = Game.new
  code_broke = false
  until code_broke
    game.play
    code_broke = game.code_broke?
    # puts "#{code_broke}"
  end
  
end

main