# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 
  User.create!(
    id: 1,
    name: "sample",
    email: "sample@sample",
    postcode: "1111111",
    address: "東京都品川区111111",
    phone_number: "11111111111",
    password: "111111"
    )

 Genre.create!(
    id: 1,
    genre: "劇場",
  )
  Genre.create!(
    id: 2,
    genre: "稽古場",
  )

#劇場検索
 Property.create!(id: 1, prefecture: "北海道", user_id: 1, genre_id: 1)
 Property.create!(id: 2, prefecture: "青森", user_id: 1, genre_id: 1)
 Property.create!(id: 3, prefecture: "岩手", user_id: 1, genre_id: 1)
 Property.create!(id: 4, prefecture: "秋田", user_id: 1, genre_id: 1)
 Property.create!(id: 5, prefecture: "宮城", user_id: 1, genre_id: 1)
 Property.create!(id: 6, prefecture: "山形", user_id: 1, genre_id: 1)
 Property.create!(id: 7, prefecture: "福島", user_id: 1, genre_id: 1)
 Property.create!(id: 8, prefecture: "山梨", user_id: 1, genre_id: 1)
 Property.create!(id: 9, prefecture: "長野", user_id: 1, genre_id: 1)
 Property.create!(id: 10, prefecture: "新潟", user_id: 1, genre_id: 1)
 Property.create!(id: 11, prefecture: "富山", user_id: 1, genre_id: 1)
 Property.create!(id: 12, prefecture: "石川", user_id: 1, genre_id: 1)
 Property.create!(id: 13, prefecture: "福井", user_id: 1, genre_id: 1)
 Property.create!(id: 14, prefecture: "東京", user_id: 1, genre_id: 1)
 Property.create!(id: 15, prefecture: "神奈川", user_id: 1, genre_id: 1)
 Property.create!(id: 16, prefecture: "千葉", user_id: 1, genre_id: 1)
 Property.create!(id: 17, prefecture: "埼玉", user_id: 1, genre_id: 1)
 Property.create!(id: 18, prefecture: "茨城", user_id: 1, genre_id: 1)
 Property.create!(id: 19, prefecture: "栃木", user_id: 1, genre_id: 1)
 Property.create!(id: 20, prefecture: "群馬", user_id: 1, genre_id: 1)
 Property.create!(id: 21, prefecture: "愛知", user_id: 1, genre_id: 1)
 Property.create!(id: 22, prefecture: "静岡", user_id: 1, genre_id: 1)
 Property.create!(id: 23, prefecture: "岐阜", user_id: 1, genre_id: 1)
 Property.create!(id: 24, prefecture: "三重", user_id: 1, genre_id: 1)
 Property.create!(id: 25, prefecture: "岡山", user_id: 1, genre_id: 1)
 Property.create!(id: 26, prefecture: "広島", user_id: 1, genre_id: 1)
 Property.create!(id: 27, prefecture: "鳥取", user_id: 1, genre_id: 1)
 Property.create!(id: 28, prefecture: "島根", user_id: 1, genre_id: 1)
 Property.create!(id: 29, prefecture: "山口", user_id: 1, genre_id: 1)
 Property.create!(id: 30, prefecture: "大阪", user_id: 1, genre_id: 1)
 Property.create!(id: 31, prefecture: "兵庫", user_id: 1, genre_id: 1)
 Property.create!(id: 32, prefecture: "京都", user_id: 1, genre_id: 1)
 Property.create!(id: 33, prefecture: "滋賀", user_id: 1, genre_id: 1)
 Property.create!(id: 34, prefecture: "奈良", user_id: 1, genre_id: 1)
 Property.create!(id: 35, prefecture: "和歌山", user_id: 1, genre_id: 1) 
 Property.create!(id: 36, prefecture: "愛媛", user_id: 1, genre_id: 1)
 Property.create!(id: 37, prefecture: "香川", user_id: 1, genre_id: 1)
 Property.create!(id: 38, prefecture: "高知", user_id: 1, genre_id: 1)
 Property.create!(id: 39, prefecture: "徳島", user_id: 1, genre_id: 1)
 Property.create!(id: 40, prefecture: "福岡", user_id: 1, genre_id: 1)
 Property.create!(id: 41, prefecture: "佐賀", user_id: 1, genre_id: 1)
 Property.create!(id: 42, prefecture: "長崎", user_id: 1, genre_id: 1)
 Property.create!(id: 43, prefecture: "熊本", user_id: 1, genre_id: 1)
 Property.create!(id: 44, prefecture: "大分", user_id: 1, genre_id: 1)
 Property.create!(id: 45, prefecture: "宮崎", user_id: 1, genre_id: 1)
 Property.create!(id: 46, prefecture: "鹿児島", user_id: 1, genre_id: 1)
 Property.create!(id: 47, prefecture: "沖縄", user_id: 1, genre_id: 1)

 #稽古場検索
 # Property.create!(id: 1, prefecture: "北海道", user_id: 1, genre_id: 2)
 # Property.create!(id: 2, prefecture: "青森", user_id: 1, genre_id: 2)
 # Property.create!(id: 3, prefecture: "岩手", user_id: 1, genre_id: 2)
 # Property.create!(id: 4, prefecture: "秋田", user_id: 1, genre_id: 2)
 # Property.create!(id: 5, prefecture: "宮城", user_id: 1, genre_id: 2)
 # Property.create!(id: 6, prefecture: "山形", user_id: 1, genre_id: 2)
 # Property.create!(id: 7, prefecture: "福島", user_id: 1, genre_id: 2)
 # Property.create!(id: 8, prefecture: "山梨", user_id: 1, genre_id: 2)
 # Property.create!(id: 9, prefecture: "長野", user_id: 1, genre_id: 2)
 # Property.create!(id: 10, prefecture: "新潟", user_id: 1, genre_id: 2)
 # Property.create!(id: 11, prefecture: "富山", user_id: 1, genre_id: 2)
 # Property.create!(id: 12, prefecture: "石川", user_id: 1, genre_id: 2)
 # Property.create!(id: 13, prefecture: "福井", user_id: 1, genre_id: 2)
 # Property.create!(id: 14, prefecture: "東京", user_id: 1, genre_id: 2)
 # Property.create!(id: 15, prefecture: "神奈川", user_id: 1, genre_id: 2)
 # Property.create!(id: 16, prefecture: "千葉", user_id: 1, genre_id: 2)
 # Property.create!(id: 17, prefecture: "埼玉", user_id: 1, genre_id: 2)
 # Property.create!(id: 18, prefecture: "茨城", user_id: 1, genre_id: 2)
 # Property.create!(id: 19, prefecture: "栃木", user_id: 1, genre_id: 2)
 # Property.create!(id: 20, prefecture: "群馬", user_id: 1, genre_id: 2)
 # Property.create!(id: 21, prefecture: "愛知", user_id: 1, genre_id: 2)
 # Property.create!(id: 22, prefecture: "静岡", user_id: 1, genre_id: 2)
 # Property.create!(id: 23, prefecture: "岐阜", user_id: 1, genre_id: 2)
 # Property.create!(id: 24, prefecture: "三重", user_id: 1, genre_id: 2)
 # Property.create!(id: 25, prefecture: "岡山", user_id: 1, genre_id: 2)
 # Property.create!(id: 26, prefecture: "広島", user_id: 1, genre_id: 2)
 # Property.create!(id: 27, prefecture: "鳥取", user_id: 1, genre_id: 2)
 # Property.create!(id: 28, prefecture: "島根", user_id: 1, genre_id: 2)
 # Property.create!(id: 29, prefecture: "山口", user_id: 1, genre_id: 2)
 # Property.create!(id: 30, prefecture: "大阪", user_id: 1, genre_id: 2)
 # Property.create!(id: 31, prefecture: "兵庫", user_id: 1, genre_id: 2)
 # Property.create!(id: 32, prefecture: "京都", user_id: 1, genre_id: 2)
 # Property.create!(id: 33, prefecture: "滋賀", user_id: 1, genre_id: 2)
 # Property.create!(id: 34, prefecture: "奈良", user_id: 1, genre_id: 2)
 # Property.create!(id: 35, prefecture: "和歌山", user_id: 1, genre_id: 2) 
 # Property.create!(id: 36, prefecture: "愛媛", user_id: 1, genre_id: 2)
 # Property.create!(id: 37, prefecture: "香川", user_id: 1, genre_id: 2)
 # Property.create!(id: 38, prefecture: "高知", user_id: 1, genre_id: 2)
 # Property.create!(id: 39, prefecture: "徳島", user_id: 1, genre_id: 2)
 # Property.create!(id: 40, prefecture: "福岡", user_id: 1, genre_id: 2)
 # Property.create!(id: 41, prefecture: "佐賀", user_id: 1, genre_id: 2)
 # Property.create!(id: 42, prefecture: "長崎", user_id: 1, genre_id: 2)
 # Property.create!(id: 43, prefecture: "熊本", user_id: 1, genre_id: 2)
 # Property.create!(id: 44, prefecture: "大分", user_id: 1, genre_id: 2)
 # Property.create!(id: 45, prefecture: "宮崎", user_id: 1, genre_id: 2)
 # Property.create!(id: 46, prefecture: "鹿児島", user_id: 1, genre_id: 2)
 # Property.create!(id: 47, prefecture: "沖縄", user_id: 1, genre_id: 2)
