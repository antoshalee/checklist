class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.references :list
      t.integer :position
      t.timestamps
    end
    add_index :groups, :list_id
  end
end
