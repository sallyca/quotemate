class AddHumanIdToSource < ActiveRecord::Migration
  def change
    add_column :sources, :human_id, :string
  end
end
