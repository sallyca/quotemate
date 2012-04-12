class AddAuthorIdToSource < ActiveRecord::Migration
  def change
    add_column :sources, :author_id, :integer
  end
end
