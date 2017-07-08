require 'faker'

FactoryGirl.define do
  factory :review do
    author Faker::HitchhikersGuideToTheGalaxy.character
    body Faker::HitchhikersGuideToTheGalaxy.quote
  end
  factory :user do
    name 'Qwerty Jr'
    email 'qwertyjr1@email.com'
    password 'password'
  end
  factory :admin, class: User do
    name 'Qwerty'
    email 'qwerty@email.com'
    password 'password'
    admin true
  end
  factory :product do
    name Faker::Coffee.blend_name
    cost Faker::Number.between(1, 50)
    origin Faker::Coffee.origin
    description Faker::Coffee.notes
    image File.new("app/assets/images/coffee1.jpg")
  end
end
