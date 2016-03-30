class CreateResearcherIdColumnInInsects < ActiveRecord::Migration
  def change
    add_column :insects, :researcher_id, :integer
  end
end
