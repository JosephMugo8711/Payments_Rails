# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# seeds.rb

# seeds.rb

require 'faker'

50.times do
  email = Faker::Internet.email
  password = Faker::Internet.password(min_length: 8)
  reset_password_token = Faker::Alphanumeric.alpha(number: 10)

  User.create!(
    email: email,
    password: password,
    encrypted_password: Devise::Encryptor.digest(User, password),
    reset_password_token: reset_password_token
  )
end

  