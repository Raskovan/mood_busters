class AddScoreToMoods < ActiveRecord::Migration[5.1]
  def change
    add_column :moods, :score, :integer
  end
end
