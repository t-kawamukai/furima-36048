# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| family_name_kana   | string | null: false               |
| first_name_kana    | string | null: false               |
| birthday           | date   | null: false               |

### Association

- has_many :items
- has_many :documents

## items テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| explanation            | text       | null: false                    |
| category_id            | integer    | null: false                    |
| status_id              | integer    | null: false                    |
| postage_id             | integer    | null: false                    |
| prefecture_id          | integer    | null: false                    |
| shipping_day_id        | integer    | null: false                    |
| price                  | integer    | null: false                    |
| user                   | references | null: false, foreign_key: true |
| buyer                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :document

## documents テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| item    | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :purchase_info

## purchase_info テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| postal_code       | string     | null: false                    |
| prefecture_id     | integer    | null: false                    |
| municipalities    | string     | null: false                    |
| address           | string     | null: false                    |
| building_name     | string     |                                |
| tell              | string     | null: false                    |
| document          | references | null: false, foreign_key: true |

### Association

- belongs_to :document
- belongs_to_active_hash :item