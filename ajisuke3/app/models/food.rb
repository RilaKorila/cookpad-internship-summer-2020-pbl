class Food < ApplicationRecord
    #belongs_to :taste
    has_many :favorites, dependent: :destroy

    def self.search(search) #ここでのself.はUser.を意味する
        if search
          Food.where(['food_name LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。User.は省略
        else
          Food.all #全て表示。User.は省略
        end
    end
    
    with_options presence: true do
        validates :food_name
    end
end
