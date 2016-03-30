class CreateGeneraTable < ActiveRecord::Migration
  def change
    create_table :genera do |t|
      t.string :name
      t.string :family
    end
  end
end
