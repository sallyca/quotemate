class AddParamsToSources < ActiveRecord::Migration
  def change
    add_column :sources, :import_url, :string
    add_column :sources, :genre, :string
  end
end
