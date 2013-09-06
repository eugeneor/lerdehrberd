class GameBoardsController < ApplicationController
  def show
    @game_boards = GameBoard.all
    # pick the specified gameboard if it's provided, otherwise just grab the first one
    if params[:id].nil?
      @game_board = @game_boards[0]
    else
      @game_board =  @game_boards.find { |g| g.id == params[:id].to_i}
      raise "Unknown game board." if @game_board.nil?
    end
  end

  def record_match
    game_board = GameBoard.find(params[:id].to_i)
    game_board.swap_rankings(params[:winner_id], params[:loser_id])
    render status: :ok
  end
end
