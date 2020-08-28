class ChangeFoodToUserId < ActiveRecord::Migration[6.0]
  def change
    remove_column :foods, :user_id, :integer
  end
end
