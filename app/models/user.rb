class User < ApplicationRecord

  has_many :user_images
  has_many :images, through: :user_images

  def mood_calculator
    mood_score = 0
    users_images = self.images.each do |image|
      mood_score += image.mood.score
    end
     mood_score
  end

  def show_moods(user)
    moods = Mood.find_by(score: user.mood_calculator)
  end

end
