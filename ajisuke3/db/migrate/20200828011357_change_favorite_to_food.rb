class ChangeFavoriteToFood < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :taste_id, :integer
    add_column :foods, :user_id, :integer
  end
end
