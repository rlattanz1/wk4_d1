require_relative 'tic_tac_toe'

class TicTacToeNode
  attr_reader :board, :next_mover_mark, :prev_move_pos

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

    # This method generates an array of all moves that can be made after
  # the current move.
  def children
    child_arr = []
    board.open_positions.each do |pos|
      if board.empty?(pos)
        dup_board = board.dup
        mark = next_mover_mark == :x ? :o : :x
        dup_board[pos]= mark
        child_arr << TicTacToeNode.new(dup_board, mark, pos)
      end
    end
    child_arr
  end

  def losing_node?(evaluator)
    
  end

  def winning_node?(evaluator)
    
      return child if child.board.winner

  end

end
