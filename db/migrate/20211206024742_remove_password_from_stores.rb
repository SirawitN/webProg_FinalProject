class RemovePasswordFromStores < ActiveRecord::Migration[6.1]
  def change
    remove_column :stores, :password, :string
    add_column :stores, :password_digest, :string
  end
end
