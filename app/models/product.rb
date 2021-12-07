class Product < ApplicationRecord
  has_one_attached :picture 
  belongs_to :store

  def thumb
    return self.picture.variant(resize: '100x100', saver: {quality: 50}).processed
  end
end
