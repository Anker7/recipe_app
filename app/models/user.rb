class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  #attachment :profile_image
  mount_uploader :profile_image_id, ImageUploader
  
  has_many :recipes, dependent: :destroy
  has_many :likes, dependent: :destroy
  
  validates :username, presence: true
  
  def likes_already_exits?(recipe)
    self.likes.exists?(recipe_id: recipe.id)
  end
end
