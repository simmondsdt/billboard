class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :rating
      t.belongs_to :signboard, foreign_key: true

      t.timestamps
    end
  end
end
