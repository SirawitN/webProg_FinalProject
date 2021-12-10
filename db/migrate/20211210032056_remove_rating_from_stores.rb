class RemoveRatingFromStores < ActiveRecord::Migration[6.1]
  def change
    remove_column :stores, :totalRatingScore, :integer
    remove_column :stores, :rateCount, :integer

    add_column :stores, :rating, :float, default: 0.00
  end
end
