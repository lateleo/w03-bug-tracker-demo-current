class ChangeGeneraTableToIncorrectPluralization
  def change
    rename_table :genera, :genus
  end
end
