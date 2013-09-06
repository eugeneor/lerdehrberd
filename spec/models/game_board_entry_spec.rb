require "spec_helper"

describe GameBoardEntry do
  let(:game_board_entry) {FactoryGirl.create(:game_board_entry, rank:5)}
  it "should have a rank of one" do
    expect(game_board_entry.rank).to eq 1
  end
  context "two entries" do
    let(:second_entry) {FactoryGirl.create(:game_board_entry, game_board: game_board_entry.game_board)}
    it "should give second entry rank 2" do
      expect(second_entry.rank).to eq 2
    end
  end
end