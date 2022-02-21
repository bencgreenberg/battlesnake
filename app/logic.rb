def avoid_walls(possible_moves, board)
  head = board[:you][:head]

  possible_moves.delete('left') if head[:x] == 0
  possible_moves.delete('down') if head[:y] == 0
  possible_moves.delete('right') if head[:x] == max_x(board)
  possible_moves.delete('up') if head[:y] == max_y(board)

  return possible_moves
end

def max_x(board)
  board[:board][:width] - 1
end

def max_y(board)
  board[:board][:height] - 1
end