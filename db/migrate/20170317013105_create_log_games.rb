class CreateLogGames < ActiveRecord::Migration
  def change
    create_table :log_games do |t|
      t.references :user, index: true, foreign_key: true, on_delete: :cascade
      t.references :opponent, index: true, foreign_key: true, on_delete: :cascade
      t.integer :user_score, default: 0
      t.integer :opponent_score, default: 0
      t.integer :day
      t.integer :month
      t.integer :year

      t.timestamps null: false
    end
  end
end
