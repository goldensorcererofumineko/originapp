class CreateDategraphs < ActiveRecord::Migration[7.0]
  def change
    create_table :dategraphs do |t|

      t.timestamps
    end
  end
end
