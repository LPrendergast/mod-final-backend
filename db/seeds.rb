# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Location.delete_all

u1 = User.create(username: "Joe")

l1 = Location.create(area: "On or near Moorgate", description: "Work place", longitude: 51.4537, latitude: -1.3456, user_id: u1.id)
