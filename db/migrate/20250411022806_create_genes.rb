class CreateGenes < ActiveRecord::Migration[8.0]
  def change
    create_table :genes do |t|
      t.string :name
      t.text :description
      t.integer :phenotype
      t.integer :dominance
      t.jsonb :effects

      t.timestamps
    end
  end
end
