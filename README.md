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