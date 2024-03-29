class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :album
      t.string :song_length
      t.belongs_to :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
