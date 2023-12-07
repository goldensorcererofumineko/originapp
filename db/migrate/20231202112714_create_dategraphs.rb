class CreateDategraphs < ActiveRecord::Migration[7.0]
  def change
    create_table :dategraphs do |t|
      t.string :activity_type
      t.datetime :s_time
      t.datetime :e_time

      t.timestamps
    end
  end
end
