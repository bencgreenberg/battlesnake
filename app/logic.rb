def avoid_walls(possible_moves, board)
  head = board[:you][:head]

  possible_moves.delete('left') if my_head[:x] == 0
  possible_moves.delete('down') if my_head[:y] == 0
  possible_moves.delete('right') if my_head[:x] == max_x(board)
  possible_moves.delete('up') if my_head[:y] == max_y(board)

  possible_moves
end

def max_x(board)
  board[:board][:width] - 1
end

def max_y(board)
  board[:board][:height] - 1
end