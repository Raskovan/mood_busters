class Image < ApplicationRecord

  has_many :user_images
  has_many :users, through: :user_images
  belongs_to :mood

end
