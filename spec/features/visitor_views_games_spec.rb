require "rails_helper"

feature 'The games index' do
  scenario 'a visitor views the games index' do
    challenger = create(:challenger)
    challenged = create(:challenged)
    
    game = create(:game,
      challenged: challenged,
      challenger: challenger,
      challenger_points: 23,
      challenged_points: 18)

    visit games_path

    expect(page).to have_content("Games")
    within("#game_#{game.id}") do
      expect(page).to have_content(game.challenger_name)
      expect(page).to have_content(game.challenged_name)
      expect(page).to have_content(game.challenger_points)
      expect(page).to have_content(game.challenged_points)
    end
  end
end