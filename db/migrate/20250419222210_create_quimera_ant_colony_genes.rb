class CreateQuimeraAntColonyGenes < ActiveRecord::Migration[8.0]
  def change
    create_table :quimera_ant_colony_genes do |t|
      t.references :gene, null: false, foreign_key: true
      t.references :colony, null: false, foreign_key: { to_table: :quimera_ant_colonies }
      t.decimal :heritability

      t.timestamps
    end
  end
end
