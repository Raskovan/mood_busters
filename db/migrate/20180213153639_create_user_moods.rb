class CreateUserMoods < ActiveRecord::Migration[5.1]
  def change
    create_table :user_moods do |t|
      t.integer :user_id
      t.integer :user_mood_id
      t.timestamps
    end
  end
end
