class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :recipe

    # recipe_idとuser_idの組みをuniqueつまり一通りにした　
    # 一人のユーザがあるレシピに対して複数回いいねするのはできない
    validates_uniqueness_of :recipe_id, scope:user_id
end
