class ChangeGeneraTableToIncorrectPluralization < ActiveRecord::Migration
  def change
    rename_table :genera, :genus
  end
end
