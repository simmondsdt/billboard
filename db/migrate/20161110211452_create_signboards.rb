class CreateSignboards < ActiveRecord::Migration[5.0]
  def change
    create_table :signboards do |t|
      t.string :name
      t.integer :total

      t.timestamps
    end
  end
end
