class CreateFacts < ActiveRecord::Migration[7.0]
  def change
    create_table :facts do |t|
      t.string :fact
      t.references :species, null: false, foreign_key: true

      t.timestamps
    end
  end
end
