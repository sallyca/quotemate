class CreateAuthors < ActiveRecord::Migration
  def up
    rename_column :sources, :type, :cat_type
  end

  def down
    rename_column :sources, :cat_type, :type
  end
end
