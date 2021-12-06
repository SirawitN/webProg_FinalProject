class AddPropertiesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :subDistrict, :string
    add_column :users, :district, :string
    add_column :users, :province, :string
    add_column :users, :zipcode, :string
    add_column :users, :phoneNumber, :string
    add_column :users, :gender, :string
    add_column :users, :birthdate, :date
  end
end
