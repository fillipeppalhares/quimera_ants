class CreateCardSources < ActiveRecord::Migration[8.0]
  def change
    create_table :card_sources do |t|
      t.references :game, null: false, foreign_key: true
      t.references :terrain, null: false, foreign_key: { to_table: :card_terrains }
      t.string :type
      t.jsonb :yields

      t.timestamps
    end
  end
end
