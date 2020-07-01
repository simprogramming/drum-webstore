# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'cleaning database'
Item.destroy_all
puts 'creating your library of items'

category = ['drum', 'gear']
brand = ['brand1', 'brand2']
details = ['size1', 'size2', 'size3']
condition = ['new', 'good', 'bad']
items_attributes = [
  {
    name: Faker::FunnyName.name,
    category: category.sample,
    brand: brand.sample,
    details: details.sample,
    condition: condition.sample,
    price: Faker::Number.digit,
    pictures: "drumset.png"
  },
  {
    name: Faker::FunnyName.name,
    category: category.sample,
    brand: brand.sample,
    details: details.sample,
    condition: condition.sample,
    price: Faker::Number.digit,
    pictures: "drumset.png"
  },
  {
    name: Faker::FunnyName.name,
    category: category.sample,
    brand: brand.sample,
    details: details.sample,
    condition: condition.sample,
    price: Faker::Number.digit,
    pictures: "drumset.png"
  }
]
items_attributes.each { |params| Item.create!(params)}
