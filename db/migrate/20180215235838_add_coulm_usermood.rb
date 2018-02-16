class AddCoulmUsermood < ActiveRecord::Migration[5.1]
  def change
    add_column :user_moods, :current_mood, :boolean, default: false
  end
end
