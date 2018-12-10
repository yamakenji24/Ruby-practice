# coding: utf-8      
def main
  ct = 0
  wh = 1
  board = Array.new(3) do
    [0, 0, 0]
  end

  print "-------ゲーム開始\n"
  board_display(board)
  while(1)
    print "-------第#{ct}手 "
    if wh == 1
      print "黒"
    else
      print "白"
    end
    print "番 ? "
    x = (gets.to_i) -1
    y = (gets.to_i) -1
    if ( !input_check(x, y, wh, board))
      print "無効\n"
      redo
    end
    board_display(board)
    ct += 1
    if wh == 1
      wh = 2
    else
      wh = 1
    end
  end
end

def game_stop()

end

def input_check(x, y, wh, board)
  return false if ((x >=3 || y >= 3) || board[x][y] != 0)
  board[x][y] = wh
  return true
end

def board_display(board)
  for i in 0..2
    for j in 0..2
      if (board[i][j] == 0)
        print "・"
      elsif board[i][j] == 1
        print "● "
      elsif board[i][j] == 2
        print "■ "
      end
    end
    print "\n"
  end
end

main
