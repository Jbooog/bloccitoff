# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# Create User
  user = User.create!(
    name: Faker::Name.name, 
    email: "jennie.sailing@gmail.com",
    password:    "helloworld" 
    )
  user.skip_confirmation!
  user.save!

puts "Seed finished"
puts "#{User.count} user created"
puts "#{Item.count} items created"