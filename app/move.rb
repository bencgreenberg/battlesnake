require "./app/logic"

def move(board)
  puts board

  possible_moves = ["up", "down", "left", "right"]
  possible_moves = avoid_walls(possible_moves, board)

  move = possible_moves.sample

  puts "MOVE: " + move
  { "move": move }
end
