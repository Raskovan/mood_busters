class User < ApplicationRecord

  has_secure_password

  has_many :user_images
  has_many :images, through: :user_images

  has_many :user_moods
  has_many :moods, through: :user_moods

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

  def mood_match
    # binding.pry
    if self.images != []
      last_user_mood_record = UserMood.where(user_id: self.id).order('created_at DESC').first

      all_users_with_mood = UserMood.where(mood_id: last_user_mood_record.mood_id)

      all_users_with_mood_except_self =     UserMood.where(mood_id: last_user_mood_record.mood_id).where('user_id != ?', self.id)
    end


    # binding.pry
  end

end
