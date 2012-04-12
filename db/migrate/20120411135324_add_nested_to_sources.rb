class AddNestedToSources < ActiveRecord::Migration
  def change
    add_column :sources, :parent_id, :integer
    add_column :sources, :lft, :integer
    add_column :sources, :rgt, :integer
  end
end
