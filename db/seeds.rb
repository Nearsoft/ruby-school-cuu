# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "Jorge", last_name: "Gusano", date_of_birth: 20.years.ago, email: 'gusano@sr.com')
Event.create(name: 'Andrei se rompe la mano', start_date: DateTime.now, end_date: 6.weeks.from_now, description: 'Directo al hospital!')

# rails db:seed