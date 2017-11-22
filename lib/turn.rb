def display_board (board)
  puts " #{board[0]} |  #{board[1]}  #{board[2]} "
  puts " #{board[3]} |  #{board[4]}  #{board[5]} "
  puts " #{board[6]} |  #{board[7]}  #{board[8]} "
end

def valid_move (board, index)
  if (index < 0 || index > 8)
    return false
  end
  if (position_taken(board,index) == true)
    return false
  end
  return true
end

def position_taken(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  end
  return false
end

def input_to_index(input)
  input -= 1
  return input
end

def move (board, input, token)
  index = input_to_index(input)
  if (valid_move(board, index) == true)
    board[index] = token
  end
end
