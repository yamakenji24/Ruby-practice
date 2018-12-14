# coding: utf-8
class Tick
  def initialize
    @ct = 0
    @wh = 1
    @board = Array.new(3) do
      [0, 0, 0]
    end
  end

  def main
    print "-------ゲーム開始\n"
    board_display(@board)
    loop do
      print "-------第#{@ct}手 "
      print_wh
      print "番 ? "
      x,y = input
      if !input_check(x, y, @wh, @board)
        puts "無効"
        redo
      end
      board_display(@board)
      @ct += 1
      check_wh
    end
  end

  def input
    x = gets.to_i - 1
    y = gets.to_i - 1
    return [x,y]
  end
  def check_wh
    case @wh
    when 1
      @wh = 2
    when 2
      @wh = 1
    end
  end
  def print_wh
    case @wh
    when 1
      print "黒"
    when 2
      print "白"
    end
  end
  def game_stop()

  end

  def input_check(x, y, wh, board)
    return false if (x >=3 || y >= 3) || board[x][y] != 0
    board[x][y] = wh
    return true
  end

  def board_display(board)
    board.each do|row|
      row.each do |column|
        case column
        when 0
          print "・"
        when 1
          print "● "
        when 2
          print "■ "
        end
      end
      print "\n"
    end
  end
end

tick_tock = Tick.new
tick_tock.main
