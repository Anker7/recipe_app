class Recipe < ApplicationRecord
  belongs_to :user
  #attachment :image
  mount_uploader :image_id, ImageUploader
  
  has_many :likes, dependent: :destroy
  
  with_options presence: true do
    validates :recipe_title
    validates :recipe_detail
    validates :image_id
  end
end
