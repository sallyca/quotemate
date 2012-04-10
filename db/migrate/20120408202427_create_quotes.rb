class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.integer :source_id
      t.text :text
      t.integer :category_id

      t.timestamps
    end
  end
end
