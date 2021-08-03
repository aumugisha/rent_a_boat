class CreateBoats < ActiveRecord::Migration[6.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :category
      t.text :description
      t.float :price_per_day
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
