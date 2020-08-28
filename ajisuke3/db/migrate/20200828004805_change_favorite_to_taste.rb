class ChangeFavoriteToTaste < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :taste_id, :integer
  end
end
