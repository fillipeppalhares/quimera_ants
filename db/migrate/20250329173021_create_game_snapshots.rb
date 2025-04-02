class CreateGameSnapshots < ActiveRecord::Migration[8.0]
  def change
    create_table :game_snapshots do |t|
      t.references :game, null: false, foreign_key: true
      t.jsonb :data, null: false

      t.timestamps
    end
  end
end
