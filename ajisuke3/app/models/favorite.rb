class Favorite < ApplicationRecord
    belongs_to :user
#    belongs_to :recipe
    belongs_to :food
    belongs_to :taste

    # recipe_idとuser_idの組みをuniqueつまり一通りにした　
    # 一人のユーザがあるレシピに対して複数回いいねするのはできない
 #   validates_uniqueness_of :recipe_id, scope:user_id
 # これだと味付けに対してのいいねになってしまう？？
    validates_uniqueness_of :food_id, scope: user_id
end
