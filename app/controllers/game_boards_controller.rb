class GameBoardsController < ApplicationController
  def index
    @game_boards = GameBoard.all
  end

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
end
