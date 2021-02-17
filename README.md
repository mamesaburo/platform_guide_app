# Platform Guide
 
- 到着するプラットフォームの情報を検索できるアプリです。
 
# 簡単な説明
 
- 乗車する電車の進行方向を基準に、「エレベーター」「エスカレーター」「トイレ」「コインロッカー」が、どの位置で降りると１番近いのかが分かります。

 
[![Image from Gyazo](https://i.gyazo.com/fd5c63acf0b943017864eac98be315cd.jpg)](https://gyazo.com/fd5c63acf0b943017864eac98be315cd)


[![Image from Gyazo](https://i.gyazo.com/be7e5e159578e5bd3d3534f66a3440a3.jpg)](https://gyazo.com/be7e5e159578e5bd3d3534f66a3440a3)


[![Image from Gyazo](https://i.gyazo.com/557721edd785db0b37c0adf69bb695f5.gif)](https://gyazo.com/557721edd785db0b37c0adf69bb695f5)

 
# URL
 
- https://platform-guide-app-29083.herokuapp.com/
 
# 使用技術
 
- Ruby
- Ruby on Rails
- MySQL
- Puma
- AWS
  - S3
- HTML
- CSS
 
# 使い方
 
1. トップページで真ん中のボタンを押して下さい
2. 到着する駅を選んで下さい
3. 到着するフォームの番号を入力して検索ボタンを押して下さい
 
# 機能一覧
- 検索機能
 
# テスト
 
- RSpec
  - 単体テスト(model)

# テーブル設計

## Stations テーブル

| Column | Type   | Options     |
| ------ | ------ | ------------|
| name   | string | null: false |

### Association

- has_many :platforms

## Platforms テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | -------------------------------|
| number        | integer    | null: false                    |
| elevator_id   | integer    | null: false                    |
| escalator_id  | integer    | null: false                    |
| toilet_id     | integer    | null: false                    |
| coinlocker_id | integer    | null: false                    |
| station       | references | null: false, foreign_key: true |

### Association

- belongs_to :station