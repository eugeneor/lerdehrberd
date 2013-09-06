class GameBoard < ActiveRecord::Base
  attr_accessible :title
  validates :title, presence: true, uniqueness: true

  has_many :game_board_entries

  def sorted_entries
    self.game_board_entries.order("rank ASC")
  end

  def swap_rankings(winner_id, loser_id)
    winner = self.game_board_entries.find(winner_id.to_i)
    loser = self.game_board_entries.find(loser_id.to_i)

    GameBoard.transaction  do
      winner_rank = winner.rank
      winner.update_attributes(rank: loser.rank)
      loser.update_attributes(rank: winner_rank)
    end
  end

end
