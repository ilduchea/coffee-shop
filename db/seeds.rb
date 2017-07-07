# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all
User.destroy_all

1.times do |index1|
  User.create!(
    name: 'Qwerty',
    email: 'qwerty@email.com',
    password: 'password',
    admin: true
  )
end

50.times do |index1|
  myProduct = Product.create!(
    name: Faker::Coffee.blend_name,
    cost: Faker::Number.between(1, 50),
    origin: Faker::Coffee.origin,
    description: Faker::Coffee.notes
  )
  5.times do |index2|
    myProduct.reviews.create!(
    author: Faker::HitchhikersGuideToTheGalaxy.character,
    body: Faker::HitchhikersGuideToTheGalaxy.quote
  )
  end
end

p "Created #{User.count} users"
p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
