require 'rails_helper'

RSpec.describe Game, :type => :model do
  
  it "should have a challenger" do
    expect(build(:game, challenger: nil)).to be_invalid
  end
  
  it "should have a challenged" do
    expect(build(:game, challenged: nil)).to be_invalid
  end

  it "should have the challenger points" do
    expect(build(:game, challenger_points: nil)).to be_invalid
  end

  it "should have the challenged points" do
    expect(build(:game, challenged_points: nil)).to be_invalid
  end
end
