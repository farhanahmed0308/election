class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party_name
      t.string :national_assembly
      t.timestamps
    end
  end
end
