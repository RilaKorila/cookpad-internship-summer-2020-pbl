class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  # 一人のuserは複数のレシピを持てるのでrecipes複数形
  # dependent: :destroy userを削除するとそれに紐づくレシピも削除
  has_many :recipes, dependent: :destroy
end
