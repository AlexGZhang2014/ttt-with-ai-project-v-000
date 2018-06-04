class Game 
  attr_accessor :board, :player_1, :player_2
  
  WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  
  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @player_1 = player_1
    @player_2 = player_2
    @board = board
  end
  
  def current_player
    turn = @board.turn_count
    turn % 2 == 0 ? player_1 : player_2
  end
  
  def won?
    WIN_COMBINATIONS.detect {|combo|
<<<<<<< HEAD
      @board.cells[combo[0]] == @board.cells[combo[1]] && @board.cells[combo[1]] == @board.cells[combo[2]] && @board.taken?(combo[0]+1)}
=======
      @board.cells[combo[0]] == @board.cells[combo[1]] && @board.cells[combo[1]] == @board.cells[combo[2]] && @board.taken?(combo[0])}
>>>>>>> 7116e0e76005b98a1f263880ff50f921947dcddb
  end
  
  def draw?
    @board.full? && !self.won?
  end
  
  def over?
    self.won? || self.draw?
  end
  
  def winner
    if won?
      @board.cells[won?[0]]
    else
<<<<<<< HEAD
      nil
=======
>>>>>>> 7116e0e76005b98a1f263880ff50f921947dcddb
    end
  end
  
  def turn
    player = self.current_player
    current_move = player.move(board)
<<<<<<< HEAD
    if !@board.valid_move?(current_move)
=======
    if @board.valid_move?(current_move)
>>>>>>> 7116e0e76005b98a1f263880ff50f921947dcddb
      turn
    else
      @board.update(current_move, player)
      @board.display
    end
  end
  
  def play
    until over?
      turn
    end
    if won?
      puts "Congratulations #{winner}!"
      "Congratulations #{winner}!"
    elsif draw?
      puts "Cat's Game!"
      "Cat's Game!"
    end
  end
<<<<<<< HEAD
=======

>>>>>>> 7116e0e76005b98a1f263880ff50f921947dcddb
end