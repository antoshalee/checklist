class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.text :content
      t.references :list
      t.boolean :checked, default: false
      t.timestamps
    end
    add_index :records, :list_id
  end
end
