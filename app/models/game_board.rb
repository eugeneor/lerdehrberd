class GameBoard < ActiveRecord::Base
  attr_accessible :title
  validates :title, presence: true, uniqueness: true

  has_many :game_board_entries

  def sorted_entries
    self.game_board_entries.order("rank ASC")
  end

end
