class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :tags
      t.string :authors
      t.string :sources
      t.string :quote_texts

      t.timestamps
    end
  end
end
