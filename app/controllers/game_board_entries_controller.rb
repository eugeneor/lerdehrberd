class GameBoardEntriesController < ApplicationController
  def create
    @game_board = GameBoard.find(params[:game_board_id])

    game_board_entry = @game_board.game_board_entries.create(display_name: params[:display_name])
    if game_board_entry.save
      redirect_to game_board_path(@game_board.id), notice: "You have been successfully added to the board."
    else
      redirect_to game_board_path(@game_board.id), alert: "You could not be added to the board."
    end
  end
end
