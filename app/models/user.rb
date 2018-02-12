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

  def show_mood
    if self.mood_calculator < Mood.minimum(:score)
      min_score = Mood.minimum(:score)
      mood = Mood.find_by(score: min_score)
    elsif self.mood_calculator > Mood.maximum(:score)
      max_score = Mood.maximum(:score)
      mood = Mood.find_by(score: max_score)
    else
      mood = Mood.find_by(score: self.mood_calculator)
    end
  end

end
