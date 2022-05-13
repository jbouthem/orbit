# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Bulk generate test users

# require 'faker'

# Create main test user 

User.create ({ name: "Test User", email: "test@test.org", password: "password", password_confirmation: "password", admin: true })  

# Bulk generate test users 

100.times do |n|
    # name = Faker::Name.name
    name = "test#{n+1}"
    email = "example#{n+1}@testuser.org"
    password = "password#{n+1}"
    User.create ({ name: name, email: email, password: password, password_confirmation: password })  
end
