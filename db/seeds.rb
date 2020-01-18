# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Product.destroy_all
Review.destroy_all

Product.create!(name: "example",
                cost: 5.0,
                country_of_origin: "Wakanda",
                product_id: self.id)
50.times do |index|
  name =  Faker::Food.ingredient
  cost = Faker::Commerce.price(range: 0..100.0, as_string: false)
  country_of_origin = Faker::Address.country
end

Review.create!(author: "John Smith",
                content_body: "A couple sentences. Blah blah blah.",
                rating: 3,
                product_id: 17)
500.times do |index|
    author = Faker::Name.name,
    content_body =  Faker::Lorem.paragraph(sentence_count = 3, supplemental = false, random_sentences_to_add = 0),
    rating =  Faker::Number.within(range = 1..5),
    product_id = Faker::Number.within(range = 1..50)
end

p "Created #{Product.count} products and #{Review.count}"
