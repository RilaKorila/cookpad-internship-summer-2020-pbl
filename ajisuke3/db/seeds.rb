# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Tasteテーブル
Taste.create!(
    title: 'テリヤキ',
    body: 'しょうゆ 大1
    みりん　 大1
    酒　　　 大1
    さとう　 小2'
)

Taste.create!(
    title: 'みそ炒め',
    body: 'みそ　　 大1
    酒　　　 大1
    さとう　 小1
    しょうゆ 小1'
)

Taste.create!(
    title: 'オイマヨ',
    body: 'オイスターソース 大1
    マヨネーズ　　　 大1'
)

Taste.create!(
    title: 'たらこじょうゆ',
    body: 'たらこ　 大2
    酒　　　 小2
    塩　　　 小1'
)

# favorite Table
# Favorite.create!(
#    user_id: 1,
#    food_id: 1,
#    taste_id: 1
# )


# Foodテーブル
Food.create!(
   food_name: 'キャベツ'
)
Food.create!(
   food_name: 'にんじん'
)
Food.create!(
   food_name: 'なす'
)
Food.create!(
   food_name: 'かぼちゃ'
)
Food.create!(
   food_name: 'トマト'
)
Food.create!(
   food_name: 'だいこん'
)
Food.create!(
   food_name: 'アスパラガス'
)
Food.create!(
   food_name: '鶏肉　もも'
)
Food.create!(
   food_name: '鶏肉　ささみ'
)
Food.create!(
   food_name: '豚バラ'
)
Food.create!(
   food_name: 'マグロ'
)
Food.create!(
   food_name: 'カンパチ'
)
Food.create!(
   food_name: 'アジ'
)
Food.create!(
   food_name: 'イワシ'
)
