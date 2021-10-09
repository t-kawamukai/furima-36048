# テーブル設計

## users テーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| nick name          | string | null: false              |
| email              | string | null: false              |
| encrypted_password | string | null: false, unique: true|
| name               | string | null: false              |
| furigana           | string | null: false              |
| birthday           | string | null: false              |

### Association

- has_many :item
- has_many :record

## items テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| name                   | string     | null: false                    |
| image                  | string     | null: false                    |
| explanation            | text       | null: false                    |
| category               | string     | null: false                    |
| status                 | string     | null: false                    |
| postage                | string     | null: false                    |
| shipping information   | string     | null: false                    |
| shipping days          | date       | null: false                    |
| price                  | string     | null: false                    |
| seller                 | references | null: false, foreign_key: true |
| buyer                  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :record

## records テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| name               | references | null: false, foreign_key: true |
| item information   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :delivery

## deliverys テーブル

| Column            | Type   | Options     |
| ----------------- | ------ | ----------- |
| postal code       | string | null: false |
| prefectures       | string | null: false |
| municipalities    | string | null: false |
| address           | string | null: false |
| building name     | string |             |
| tell              | string | null: false |

### Association

- belongs_to :record