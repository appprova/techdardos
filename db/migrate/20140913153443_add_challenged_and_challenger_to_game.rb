class AddChallengedAndChallengerToGame < ActiveRecord::Migration
  def change
    add_reference :games, :challenged, index: true
    add_reference :games, :challenger, index: true
  end
end
