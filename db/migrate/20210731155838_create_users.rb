class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :license_number
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
