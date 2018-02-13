class RenameColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :user_moods, :user_mood_id, :mood_id
  end
end
