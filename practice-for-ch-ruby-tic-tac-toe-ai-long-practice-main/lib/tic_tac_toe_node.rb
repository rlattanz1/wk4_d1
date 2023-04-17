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
    dup_board = dup
    # @next_mover_mark == :X ? @next_mover_mark = :O : @next_mover_mark = :X
    (0..2).each do |r|
      (0..2).each do |c|
        TicTacToe.place_mark([r,c],dup_board.next_mark) if board.rows[r][c].nil?
        child_arr << dup_board
      end
    end
    p child_arr
  end

  def losing_node?(evaluator)

  end

  def winning_node?(evaluator)

  end

end

# k = TicTacToeNode.new(Board.new,:X)
# k.children
