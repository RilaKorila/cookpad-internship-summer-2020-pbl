class Favorite < ApplicationRecord
    belongs_to :user
#    belongs_to :recipe
    belongs_to :food
    belongs_to :taste

    # recipe_idとuser_idの組みをuniqueつまり一通りにした　
    # 一人のユーザがあるレシピに対して複数回いいねするのはできない
 #   validates_uniqueness_of :recipe_id, scope:user_id
    # userがfood_id, taste_idの組みに対しいて一意
    validates_uniqueness_of :user_id, scope: [:food_id , :taste_id]

   
end
