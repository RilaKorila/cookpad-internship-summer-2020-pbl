class ChangeRecipeToFood < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :recipe_id, :integer
    add_column :favorites, :food_id, :integer
  end
end
