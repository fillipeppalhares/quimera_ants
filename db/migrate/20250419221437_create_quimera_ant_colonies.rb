class CreateQuimeraAntColonies < ActiveRecord::Migration[8.0]
  def change
    create_table :quimera_ant_colonies do |t|
      t.string :name
      t.references :terrain, null: false, foreign_key: { to_table: :card_terrains }
      t.jsonb :creatures

      t.timestamps
    end
  end
end
