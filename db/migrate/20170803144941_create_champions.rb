class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.string :stats, null: false
      t.string :lore, null: false
    end
  end
end
