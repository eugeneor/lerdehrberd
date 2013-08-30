class GameBoardEntry < ActiveRecord::Base
  attr_accessible :display_name, :rank
  validates :display_name, presence: true

  belongs_to :game_board

  before_create do
    if !self.game_board.nil?
      self.rank = self.game_board.game_board_entries.maximum("rank").to_i + 1
    end
  end
end
