# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false, unique: true |
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
| category               | string     | null: false                    |
| status                 | string     | null: false                    |
| postage                | string     | null: false                    |
| prefectures            | string     | null: false                    |
| shipping_days          | date       | null: false                    |
| price                  | integer    | null: false                    |
| seller                 | references | null: false, foreign_key: true |
| buyer                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :document
- has_one_active_hash :purchase_info

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
| prefectures       | string     | null: false                    |
| municipalities    | string     | null: false                    |
| address           | string     | null: false                    |
| building_name     | string     |                                |
| tell              | string     | null: false                    |
| document          | references | null: false, foreign_key: true |

### Association

- belongs_to :document
- belongs_to_active_hash :item