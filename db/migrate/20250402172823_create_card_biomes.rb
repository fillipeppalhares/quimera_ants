class CreateCardBiomes < ActiveRecord::Migration[8.0]
  def change
    create_table :card_biomes do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :biome_type, null: false
      t.integer :zone, null: false
      t.integer :temperature, null: false
      t.text :description, null: false
      t.integer :age, null: false
      t.integer :center_q, null: false
      t.integer :center_r, null: false
      t.integer :center_s, null: false
      t.integer :radius, null: false
      t.jsonb :terrain_mapping, null: true

      t.timestamps
    end
  end
end
