# README

## users テーブル

| Column              | Type   | Options                    |
| ------------------- | ------ | -------------------------- |
| email               | string | null: false, unique: true  |
| encrypted_password  | string | null: false                |
| name                | string | null: false                |

  has_many :sleep_records
  has_many :sleep_statistics

## dategraphs テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| activity_type | string     |                                |
| s_time        | datetime   |                                |
| e_time        | datetime   |                                |
| user          | references | null: false, foreign_key: true |

  belongs_to :user

## activity_details テーブル

| Column                 | Type      | Options                        |
| ---------------------- | --------- | ------------------------------ |
| dategraphs             |references | foreign_key: true, index: true |
| calories_consumed      | integer   |                                |
| field_of_work          | string    |                                |
| field_of_study         | string    |                                |
| mode_of_transportation | string    |                                |

  belongs_to :user