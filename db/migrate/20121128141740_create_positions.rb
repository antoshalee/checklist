class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :position
      t.string :groupable_type
      t.integer :groupable_id
      t.string :positionable_type
      t.integer :positionable_id
      t.timestamps
    end
  end
end
