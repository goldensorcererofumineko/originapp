class CreateDategraphs < ActiveRecord::Migration[7.0]
  def change
    create_table :dategraphs do |t|
      t.string :activity_type
      t.datetime :s_time
      t.datetime :e_time

      t.timestamps
    end

    create_table :activity_details do |t|
      t.references :daily_activity, foreign_key: true
      # ここに各活動に対する詳細情報のカラムを追加します

      t.timestamps
    end
  end
end
