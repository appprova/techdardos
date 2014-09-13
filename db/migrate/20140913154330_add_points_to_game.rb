class AddPointsToGame < ActiveRecord::Migration
  def change
    add_column :games, :challenger_points, :integer
    add_column :games, :challenged_points, :integer
  end
end
