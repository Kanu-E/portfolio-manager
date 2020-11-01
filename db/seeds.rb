# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

4.times do  
    User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "Hello" )
end

4.times do
    Portfolio.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, code: Faker::Alphanumeric.alphanumeric(number: 5), user_id: 1)
end

4.times do
    Portfolio.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, code: Faker::Alphanumeric.alphanumeric(number: 5), user_id: 2)
end

4.times do
    Portfolio.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, code: Faker::Alphanumeric.alphanumeric(number: 5), user_id: 3)
end

6.times do
    Portfolio.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, code: Faker::Alphanumeric.alphanumeric(number: 5), user_id: 4)
end

20.times do
    Asset.create(name: Faker::Company.name, current_value: Faker::Number.decimal(l_digits: 3, r_digits: 2))
end

23.times do
    Asset.create(name: Faker::Company.name, current_value: Faker::Number.decimal(l_digits: 4, r_digits: 2))
end

24.times do
    Asset.create(name: Faker::Company.name, current_value: Faker::Number.decimal(l_digits: 2, r_digits: 2))
end






