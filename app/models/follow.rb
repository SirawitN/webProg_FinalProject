class Follow < ApplicationRecord
  belongs_to :store
  belongs_to :user

  validates :store_id, uniqueness: { scope: :user_id }
  validates :user_id, uniqueness: { scope: :store_id }
  
end
