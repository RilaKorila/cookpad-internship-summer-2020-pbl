class Food < ApplicationRecord
    has_many :favorites, dependent: :destroy

    with_options presence: true do
        validates :food_name
    end
end
