class CreateUserSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :user_songs do |t|
      t.integer :position, default: 0
      t.references :user, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
