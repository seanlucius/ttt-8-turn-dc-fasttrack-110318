def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (position_taken?(board, index))
    false
  elsif !(index.between?(0, 8))
    false 
  else 
    true
  end 
end 

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false 
  elsif board[index] == "X" || "O"
    true
end 

def input_to_index(user_input)
  input = (user_input.to_i) - 1
  return input 
end 

def move(board, index, character = "X")
  board[index] = character
end
