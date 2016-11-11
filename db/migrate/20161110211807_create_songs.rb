class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :album
      t.string :title
      t.date :release_date
      t.belongs_to :artist, foreign_key: true

      t.timestamps
    end
  end
end
