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
    @next_mover_mark == :X ? @next_mover_mark = :O : @next_mover_mark = :X
    board.each do |r|
      r.each do |c|
        child_arr << board[r][c] if board[r][c].empty?
      end
    end
    p child_arr


  end

  def losing_node?(evaluator)

  end

  def winning_node?(evaluator)
  end

end

k = TicTacToeNode.new(Board.new,:X)
k.children

