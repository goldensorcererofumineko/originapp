# README

## users テーブル

| Column              | Type   | Options                    |
| ------------------- | ------ | -------------------------- |
| email               | string | null: false, unique: true  |
| encrypted_password  | string | null: false                |
| name                | string | null: false                |

  has_many :sleep_records
  has_many :sleep_statistics

## sleep_records テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| start_time  | datetime   |                                |
| set_time    | time       |                                |
| end_time    | time       |                                |
| user        | references | null: false, foreign_key: true |

  belongs_to :user

## eat_records テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| meal_time_breakfast    | datetime   | null: false                    |
| food_item_id_breakfast | integer    |                                |
| breakfast              | string     |                                |
| meal_time_lunch        | datetime   |                                |
| food_item_id_lunch     | integer    |                                |
| lunch                  | string     |                                |
| meal_time_dinner       | datetime   |                                |
| food_item_id_dinner    | integer    |                                |
| dinner                 | string     |                                |
| meal_time_snack        | datetime   |                                |
| food_item_id_snack     | integer    |                                |
| snack                  | string     |                                |
| user                   | references | null: false, foreign_key: true |

  belongs_to :user