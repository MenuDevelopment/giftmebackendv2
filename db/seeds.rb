# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.all.destroy_all()
Gift.all.destroy_all()
Comment.all.destroy_all()
Pledge.all.destroy_all()

users = []
gifts = []
users.push(User.create({
  first_name: "Manuel",
  last_name: "Grullon",
  email: "test@test.com",
  password: "abc123",
  payment_info: "yeah right"
  }))

20.times do
  users.push(User.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    payment_info: Faker::Bitcoin.address
    }))
end

20.times do
  gifts.push(Gift.create({
    item_name: Faker::Commerce.product_name,
    item_link: Faker::Internet.url,
    item_description: Faker::Lorem.paragraph,
    item_price: Faker::Commerce.price,
    end_date:Faker::Date.forward(60),
    user_id: users.sample.id
    }))
  end

  20.times do
  Pledge.create({
    user: users.sample,
    gift: gifts.sample,
    amount: rand(1..5),
    message: "HAPPY BIRTHDAY! ENJOY!"
    })
  end
