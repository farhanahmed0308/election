class CreateVoters < ActiveRecord::Migration[7.0]
  def change
    create_table :voters do |t|
      t.string :name
      t.integer :id_card
      t.string :address
      t.string :voter_number
      t.timestamps
    end
  end
end
