class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  # 一人のuserは複数のレシピを持てるのでrecipes複数形
  # dependent: :destroy userを削除するとそれに紐づくレシピも削除
  has_many :recipes, dependent: :destroy
  # １つのレシピに複数のいいねがつく + レシピが削除されたらいいねも削除
  has_many :favorites, dependent: :destroy

  # そのユーザがあるレシピに対していいねを押したことがあったか？
  # views/recipes/index.html.erb でこの関数をしよう
  def already_favorited?(recipe)
    self.favorites.exists?(recipe_id: recipe.id)
  end
end
