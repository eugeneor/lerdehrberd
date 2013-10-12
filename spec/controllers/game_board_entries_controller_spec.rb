require "spec_helper"

describe GameBoardEntriesController  do
  let!(:game_board_entry) {FactoryGirl.create(:game_board_entry)}

  describe "PUT update" do
    let(:new_name) {"whatever"}
    let(:params) { { id: game_board_entry.id, display_name: new_name} }
    it "should find the game board entry by id and call update_attributes! on it" do
      GameBoardEntry.should_receive(:find).with(game_board_entry.id).and_return(game_board_entry)
      game_board_entry.should_receive(:update_attributes!).with({display_name: new_name}).and_return(true)
      put :update, params
      expect(response).to be_success
    end

    it "should not find a entry and not call update_attributes!" do
      GameBoardEntry.any_instance.should_not_receive(:update_attributes!)
      params[:id] = 45
      expect { put :update, params }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  describe "DELETE destroy" do
    let(:params) { { id: game_board_entry.id} }
    it "should find the game board entry by id and call destroy on it" do
      GameBoardEntry.should_receive(:find).with(game_board_entry.id).and_return(game_board_entry)
      game_board_entry.should_receive(:destroy).and_return(true)
      delete :destroy, params
      expect(response).to be_success
    end

    it "should not find an entry and not call destroy" do
      GameBoardEntry.any_instance.should_not_receive(:destroy)
      params[:id] = 45
      expect { delete :destroy, params }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end