class Recipe < ApplicationRecord
    # レシピは一人のuserによってかかれるので、user単数形
    belongs_to :user
    # １つのレシピに複数のいいねがつく + レシピが削除されたらいいねも削除
    has_many :favorites, dependent: :destroy

    with_options presence: true do
        validates :title
        validates :body
    end
     
end
