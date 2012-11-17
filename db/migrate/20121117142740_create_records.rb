class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.text :content
      t.references :list
      t.boolean :checked
      t.timestamps
    end
    add_index :records, :list_id
  end
end
