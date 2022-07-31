require "./game.rb"

def main 
  game = Game.new
  code_broke = false
  round = 0
  until code_broke
    game.play
    code_broke = game.code_broke?
    # puts "#{code_broke}"
  end
end

main