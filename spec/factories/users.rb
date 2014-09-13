# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "User"
    email "user@example.com"
    password "password123"
    password_confirmation "password123"

    factory :challenger do
      name "Challenger"
      email "challenger@example.com"
    end

    factory :challenged do
      name "Challenged"
      email "challenged@example.com"
    end

  end
end
