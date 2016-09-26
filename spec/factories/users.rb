FactoryGirl.define do

  sequence(:email) { |n| "person-#{n}@example.com" }
  sequence(:password) { |n| "#{n.to_s * 8}" }

  factory :user do
    email
    password
    password_confirmation { password }
  end
end
