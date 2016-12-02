# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(
  name: 'Kevin',
  email: 'iqnivek@gmail.com'
)

u.goals.create(
  name: "don't sleep late"
)
u.goals.create(
  name: 'run or go to the gym'
)
u.goals.create(
  name: 'eat less'
)
