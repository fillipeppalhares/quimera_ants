class CreateGameLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :game_logs do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :log_type, null: false
      t.jsonb :data, null: false

      t.timestamps
    end
  end
end
