class CreateGameBoards < ActiveRecord::Migration
  def up
    create_table :game_boards do |t|
      t.string :title, null: false
      t.references :game_board

      t.timestamps
    end

    add_index :game_boards, :title
  end

  def down
    drop_table :game_boards
  end
end
