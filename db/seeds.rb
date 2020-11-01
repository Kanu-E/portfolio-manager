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

20.times do
    Portfolio.create(name: Faker::Name.last_name, code: Faker::Alphanumeric.alphanumeric(number: 5), user_id: Faker::Number.between(from: 1, to: 4))
end

5.times do
    Finance.create(name: Faker::Company.name, current_value: Faker::Number.decimal(l_digits: 3, r_digits: 2))
end

10.times do
    Finance.create(name: Faker::Company.name, current_value: Faker::Number.decimal(l_digits: 2, r_digits: 2))
end

13.times do
    Finance.create(name: Faker::Company.name, current_value: Faker::Number.decimal(l_digits: 1, r_digits: 2))
end

50.times do
    Holding.create(finance_id: Faker::Number.between(from: 1, to: 20), portfolio_id: Faker::Number.between(from: 1, to: 20), cost: Faker::Number.decimal(l_digits: 2, r_digits: 2) )
end

50.times do
    Holding.create(finance_id: Faker::Number.between(from: 1, to: 20), portfolio_id: Faker::Number.between(from: 1, to: 20), cost: Faker::Number.decimal(l_digits: 3, r_digits: 2) )
end

30.times do
    Holding.create(finance_id: Faker::Number.between(from: 1, to: 20), portfolio_id: Faker::Number.between(from: 1, to: 20), cost: Faker::Number.decimal(l_digits: 1, r_digits: 2) )
end




