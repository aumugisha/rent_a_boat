class AddInfoToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :licence_number, :string
    add_column :users, :birth_date, :datetime
  end
end
