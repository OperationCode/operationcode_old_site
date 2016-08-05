FactoryGirl.define do
  factory :veteran do
    first_name "Billy"
    last_name "Bob"
    sequence :email do |n|
      "billybob#{n}@email.com"
    end
    password 'password'
    password_confirmation 'password'
  end
end
