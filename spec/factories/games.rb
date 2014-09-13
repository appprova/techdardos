# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    challenged
    challenger
    challenger_points 23
    challenged_points 23
  end
end
