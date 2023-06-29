class CreateSpecies < ActiveRecord::Migration[7.0]
  def change
    create_table :species do |t|
      t.string :scientific_name
      t.string :common_name

      t.timestamps
    end
  end
end
