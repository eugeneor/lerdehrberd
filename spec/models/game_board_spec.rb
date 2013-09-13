require "spec_helper"

describe GameBoard do
  let(:game_board) {FactoryGirl.create(:game_board)}
  let(:first_entry) {FactoryGirl.create(:game_board_entry, game_board: game_board)}
  let(:second_entry) {FactoryGirl.create(:game_board_entry, game_board: game_board)}

  describe "#sorted_entries" do
    before do
      first_entry.update_attributes(rank: 4)
      second_entry.update_attributes(rank: 3)
    end
    it "should return two entries" do
      expect(game_board.sorted_entries.count).to eq 2
    end
    it "should return them in the correct order" do
      expect(game_board.sorted_entries[0]).to eq second_entry
      expect(game_board.sorted_entries[1]).to eq first_entry
    end
  end

  describe "#swap_rankings" do
    let!(:first_ranking) {first_entry.rank}
    let!(:second_ranking) {second_entry.rank}
    it "should swap the rankings" do
      game_board.swap_rankings(first_entry.id, second_entry.id)
      expect(first_entry.reload.rank).to eq second_ranking
      expect(second_entry.reload.rank).to eq first_ranking
    end
  end
end