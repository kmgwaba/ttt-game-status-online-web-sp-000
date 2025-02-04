# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 4, 8],
  [1, 4, 7],
  [6, 4, 2],
  [0, 3, 6],
  [2, 5, 8],
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combo|

    index_1 = win_combo[0]
    index_2 = win_combo[1]
    index_3 = win_combo[2]

    position_1 = board[index_1]
    position_2 = board[index_2]
    position_3 = board[index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo

    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo

end
  end
  return false
end

def full?(board)
  board.all? do |position|
  position == "X" || position == "O"

end
  end

  def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]  
  end
end
