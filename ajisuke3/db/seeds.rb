# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Foodテーブル
Food.create!(
   food_name: '鶏肉　もも',
)
Food.create!(
   food_name: 'にんじん',
)
Food.create!(
   food_name: 'だいこん',
)

# Tasteテーブル
Taste.create!(
    title: 'テリヤキ',
    body: 'しょうゆ 大1
    みりん　 大1
    酒　　　 大1
    さとう　 小2'
)