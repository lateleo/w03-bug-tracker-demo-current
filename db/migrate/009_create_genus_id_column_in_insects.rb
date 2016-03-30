class CreateGenusIdColumnInInsects < ActiveRecord::Migration
  def change
    add_column :insects, :genus_id, :integer
  end
end
