class AddStoreToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :store_id, :integer, presence: true
  end
end
