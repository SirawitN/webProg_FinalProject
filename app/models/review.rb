class Review < ApplicationRecord
  belongs_to :user
  belongs_to :store

  attribute :score, :integer, default: 1

  def check_user_with_store(user, store)
    return  user.orders.where(store_id: store.id).any?
  end

  def self.find_or_initialize_custom(user, store, score, comment)
    review = Review.find_by(user_id: user, store_id: store)
    if review
      review.score = score.to_i
      review.comment = comment
    else
      review = Review.new(user_id: user.id, store_id: store.id, score: score.to_i, comment: comment)
    end
    return review
  end
end
