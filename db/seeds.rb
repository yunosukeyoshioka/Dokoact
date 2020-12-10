# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.create!(
    name: "sample",
    email: "yunosuke@samplesample",
    postcode: "1111111",
    address: "東京都品川区111111",
    phone_number: "11111111111",
    password: "111111"
    )


 Genre.create!(
    id: 1,
    genre: "劇場"
  )
  Genre.create!(
    id: 2,
    genre: "貸しスタジオ"
  )

  Area.create!(width: "~50㎡")
  Area.create!(width: "51~100㎡")
  Area.create!(width: "101~150㎡")
  Area.create!(width: "151~200㎡")
  Area.create!(width: "201~300㎡")
  Area.create!(width: "300~500㎡")
  Area.create!(width: "501~700㎡")
  Area.create!(width: "701~1000㎡")
  Area.create!(width: "1001~1500㎡")
  Area.create!(width: "1500㎡~")
  Area.create!(width: "問わない")


  #県データ
  Prefecture.create!(id: 1, name: "北海道")
  Prefecture.create!(id: 2, name: "青森")
  Prefecture.create!(id: 3, name: "岩手")
  Prefecture.create!(id: 4, name: "秋田")
  Prefecture.create!(id: 5, name: "宮城")
  Prefecture.create!(id: 6, name: "山形")
  Prefecture.create!(id: 7, name: "福島")
  Prefecture.create!(id: 8, name: "山梨")
  Prefecture.create!(id: 9, name: "長野")
  Prefecture.create!(id: 10, name: "新潟")
  Prefecture.create!(id: 11, name: "富山")
  Prefecture.create!(id: 12, name: "石川")
  Prefecture.create!(id: 13, name: "福井")
  Prefecture.create!(id: 14, name: "東京")
  Prefecture.create!(id: 15, name: "神奈川")
  Prefecture.create!(id: 16, name: "千葉")
  Prefecture.create!(id: 17, name: "埼玉")
  Prefecture.create!(id: 18, name: "茨城")
  Prefecture.create!(id: 19, name: "栃木")
  Prefecture.create!(id: 20, name: "群馬")
  Prefecture.create!(id: 21, name: "愛知")
  Prefecture.create!(id: 22, name: "静岡")
  Prefecture.create!(id: 23, name: "岐阜")
  Prefecture.create!(id: 24, name: "三重")
  Prefecture.create!(id: 25, name: "岡山")
  Prefecture.create!(id: 26, name: "広島")
  Prefecture.create!(id: 27, name: "鳥取")
  Prefecture.create!(id: 28, name: "島根")
  Prefecture.create!(id: 29, name: "山口")
  Prefecture.create!(id: 30, name: "大阪")
  Prefecture.create!(id: 31, name: "兵庫")
  Prefecture.create!(id: 32, name: "京都")
  Prefecture.create!(id: 33, name: "滋賀")
  Prefecture.create!(id: 34, name: "奈良")
  Prefecture.create!(id: 35, name: "和歌山") 
  Prefecture.create!(id: 36, name: "愛媛")
  Prefecture.create!(id: 37, name: "香川")
  Prefecture.create!(id: 38, name: "高知")
  Prefecture.create!(id: 39, name: "徳島")
  Prefecture.create!(id: 40, name: "福岡")
  Prefecture.create!(id: 41, name: "佐賀")
  Prefecture.create!(id: 42, name: "長崎")
  Prefecture.create!(id: 43, name: "熊本")
  Prefecture.create!(id: 44, name: "大分")
  Prefecture.create!(id: 45, name: "宮崎")
  Prefecture.create!(id: 46, name: "鹿児島")
  Prefecture.create!(id: 47, name: "沖縄")

