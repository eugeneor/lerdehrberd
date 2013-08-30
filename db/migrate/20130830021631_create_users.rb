class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :display_name, null: false
      t.string :email, null: false

      t.timestamps
    end

    add_index :users, :email
  end

  def down
    drop_table :users
  end
end
