def display_board(current_board)
    puts " #{current_board[0]} | #{current_board[1]} | #{current_board[2]} "
    puts "-----------"
    puts " #{current_board[3]} | #{current_board[4]} | #{current_board[5]} "
    puts "-----------"
    puts " #{current_board[6]} | #{current_board[7]} | #{current_board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  elsif position_taken?(board, index)
    return false
  elsif !index.between?(0, 8)
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  elsif (board[index] != " " || board[index] != "" || board[index] != nil)
    return false
  end
end

def move(board, index)

end
