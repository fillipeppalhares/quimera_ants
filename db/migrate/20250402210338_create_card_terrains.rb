class CreateCardTerrains < ActiveRecord::Migration[8.0]
  def change
    create_table :card_terrains do |t|
      t.references :game, null: false, foreign_key: true
      t.references :biome, null: false, foreign_key: { to_table: :card_biomes }
      t.string :type
      t.integer :q
      t.integer :r
      t.integer :s

      t.timestamps
    end
  end
end
