class RemoveRedundantSeenByColumnInInsects < ActiveRecord::Migration
  def change
    remove_column :insects, :seen_by, :string
  end
end
