# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Rails.env == 'production'
  print "Running Seed Task --------------------------------------------------------------\n"
  load(Rails.root.join('db', 'seeds', 'destroy.rb'))


  print "|-- Seeding\n"
  load(Rails.root.join('db', 'seeds', 'orgs.rb'))

else
  print "For your protection, seeding is not allowed on Production.\n"
end

