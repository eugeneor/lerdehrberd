require "spec_helper"

describe GameBoardsController  do
  let(:game_board) {FactoryGirl.create(:game_board)}
  let(:loser) {FactoryGirl.create(:game_board_entry, game_board: game_board, rank: 1)}
  let(:winner) {FactoryGirl.create(:game_board_entry, game_board: game_board, rank: 2)}

  describe "PUT record_match" do
    let(:params) { { id: game_board.id, winner_id: winner.id, loser_id: loser.id} }
    it "should find the game board entry by id and call update_attributes! on it" do
      GameBoard.should_receive(:find).with(game_board.id).and_return(game_board)
      game_board.should_receive(:swap_rankings).with(winner.id, loser.id)
      put :record_match, params
      expect(response).to be_success
    end
  end
end