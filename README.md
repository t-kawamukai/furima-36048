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
| image                  | string     | null: false                    |
| explanation            | text       | null: false                    |
| category               | string     | null: false                    |
| status                 | string     | null: false                    |
| postage                | string     | null: false                    |
| shipping_information   | string     | null: false                    |
| shipping days          | date       | null: false                    |
| price                  | string     | null: false                    |
| seller                 | references | null: false, foreign_key: true |
| buyer                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :documents
- has_one_active_hash :purchase_info

## documents テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user_id | references | null: false, foreign_key: true |
| item_id | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :purchase_info

## purchase_info テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| postal_code       | string     | null: false                    |
| prefectures       | references | null: false, foreign_key: true |
| municipalities    | string     | null: false                    |
| address           | string     | null: false                    |
| building_name     | string     |                                |
| tell              | string     | null: false                    |
| document_id       | references | null: false, foreign_key: true |

### Association

- belongs_to :document
- belongs_to_active_hash :item