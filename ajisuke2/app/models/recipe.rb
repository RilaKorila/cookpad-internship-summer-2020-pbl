class Recipe < ApplicationRecord
    # レシピは一人のuserによってかかれるので、user単数形
    belongs_to :user

    with_options presence: true do
        validates :title
        validates :body
    end
     
end
