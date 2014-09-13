require 'rails_helper'

RSpec.describe User, :type => :model do
    it "should have a name" do
    expect(build(:user, name: nil)).to be_invalid
  end
end
