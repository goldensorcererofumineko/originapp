class CreateEatRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :eat_records do |t|
      t.datetime :meal_time_breakfast
      t.integer :food_item_id_breakfast
      t.string :breakfast

      t.datetime :meal_time_lunch
      t.integer :food_item_id_lunch
      t.string :lunch

      t.datetime :meal_time_dinner
      t.integer :food_item_id_dinner
      t.string :dinner

      t.datetime :meal_time_snack
      t.integer :food_item_id_snack
      t.string :snack

      t.timestamps
    end
  end
end
