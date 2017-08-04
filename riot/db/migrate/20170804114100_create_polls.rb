class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.references :user, null: false
      t.references :champ_one, null: false
      t.references :champ_two, null: false
      t.string :answer, null: false
      t.timestamps
    end
    add_index(:polls, [:champ_one_id, :champ_two_id], unique: true)
  end
end
