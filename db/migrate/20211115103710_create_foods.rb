class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement_units
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
