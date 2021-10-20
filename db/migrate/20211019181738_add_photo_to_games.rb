class AddPhotoToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :photo, :string
  end
end
