# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# t.string :first_name
# t.string :last_name
# t.string :address
# t.string :city
# t.string :state
# t.string :zipcode
# t.string :country

10.times do
  Customer.create(
    first_name: Faker::Name.first_name,
    last_name:  Faker::Name.last_name,
    address: Faker::Address.street_address,
    city:    Faker::Address.city,
    state:   Faker::Address.state,
    zipcode: Faker::Address.zip_code,
    country: Faker::Address.country
  )
end
