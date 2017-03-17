class ChangeDayType < ActiveRecord::Migration
  def up
   change_column :log_games, :day, :string
  end

  def down
   change_column :log_games, :day, :integer
  end
end
