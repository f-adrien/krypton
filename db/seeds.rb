# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying database"
User.destroy_all
puts "database empty"

puts "create user"
@user = User.new({ first_name: 'Barbara', last_name: 'Peric', email: 'smiling@smile.smile', password: 'password' })
@user.save!
puts "user added"






puts "adding heros"

10.times do
  superhero = Superhero.new({ name: Faker::Games::Heroes.name, superpower: Faker::Games::Heroes.specialty, location: Faker::Nation.capital_city, price_per_day: rand(1..1000) })
  superhero.user_id = @user.id
  superhero.save!
end
puts "hero added !"
