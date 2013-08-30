class CreateGameBoardEntries < ActiveRecord::Migration
  def up
    create_table :game_board_entries do |t|
      t.string :display_name, null: false
      t.references :game_board, null: false
      t.integer :rank, null: false, default: 99999

      t.timestamps
    end

    add_index :game_board_entries, :game_board_id
  end

  def down
    drop_table :game_board_entries
  end
end
