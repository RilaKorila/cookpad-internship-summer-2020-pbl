class ChangeFavoriteToTasteFood < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :taste_id, :integer
    remove_column :foods, :user_id, :integer
  end
end
