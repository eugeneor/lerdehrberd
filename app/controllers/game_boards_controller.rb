class GameBoardsController < ApplicationController
  def index
    @game_boards = GameBoard.all
  end

  def show
    @game_board = GameBoard.find_by_id(params[:id])
  end
end
