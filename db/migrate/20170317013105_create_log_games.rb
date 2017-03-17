class CreateLogGames < ActiveRecord::Migration
  def change
    create_table :log_games do |t|
      t.references :user, index: true, foreign_key: true
      t.references :opponent, index: true, foreign_key: true
      t.integer :user_score
      t.integer :opponent_score
      t.integer :day
      t.integer :month
      t.integer :year

      t.timestamps null: false
    end
  end
end
