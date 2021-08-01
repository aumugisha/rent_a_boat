class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :licence_number
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
