# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "admin@admin.com",
             firstname: "Przemyslaw",
             lastname:  "Falowski",
             password:              "admin12345",
             password_confirmation: "admin12345",
             admin: true)

5.times do |n|
  firstname = Faker::Name.first_name
  lastname = Faker::Name.last_name
  email = "user_#{n+1}@user.com"
  password = "password"

  User.create!(email: email,
               firstname: firstname,
               lastname: lastname,
               password: password,
               password_confirmation: password,
               admin: false)
end

4.times do |n|
  name = Faker::Product.product
  Category.create!(name: name)
end

4.times do |n|
  title = Faker::Product.product_name
  description = Faker::Lorem.sentence
  price = rand(1..6)
  user_id = rand(1..6)
  category_id = rand(1..4)

  Product.create!(title: title,
                  description: description,
                  price: price,
                  user_id: user_id,
                  category_id: category_id)
end

8.times do |n|
  content = Faker::Lorem.sentence
  rating = rand(1..5)
  user_id = rand(1..6)
  product_id = rand(1..4)

  Review.create!(content: content,
                 rating: rating,
                 user_id: user_id,
                 product_id: product_id)
end