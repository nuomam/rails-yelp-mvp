# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.create(name: "Le Tunisien", address: "23 rue du Liban", phone_number: "01 47 07 58 52", category: "japanese")
Restaurant.create(name: "Dim Sum Party", address: "2 rue de Pékin", phone_number: "0687448555", category: "chinese")
Restaurant.create(name: "Pizza La Famille", address: "3 avenue de la République", phone_number: "0588547889", category: "italian")
Restaurant.create(name: "Fondue", address: "1 rue de la Paix", phone_number: "0515478566", category: "french")
Restaurant.create(name: "A la bonne frite", address: "33 rue de Paris", phone_number: "05 14 75 85 65", category: "belgian")

25.times do
review = Review.new(
  content: Faker::Lorem.sentence,
  rating: (0..5).to_a.sample,
  restaurant_id: (1..5).to_a.sample
  )
review.save!
end
