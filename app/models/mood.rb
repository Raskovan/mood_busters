class Mood < ApplicationRecord

  has_many :images

  has_many :user_moods
  has_many :users, through: :user_moods

end
