class CreateActivityDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :activity_details do |t|
      t.references :dategraphs, foreign_key: true, index: true
      t.integer :calories_consumed 
      t.string :field_of_work
      t.string :field_of_study # 学習の場合の分野
      t.string :mode_of_transportation # 移動の場合の手段
      t.string :entertainment_type 

      t.timestamps
    end
  end
end