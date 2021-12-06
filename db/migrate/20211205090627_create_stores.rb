class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :address
      t.string :subDistrict
      t.string :district
      t.string :province
      t.string :zipcode
      t.integer :totalRatingScore
      t.integer :rateCount

      t.timestamps
    end
  end
end
