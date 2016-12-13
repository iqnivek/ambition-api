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

g1 = u.goals.create(
  name: "don't sleep late"
)
g2 = u.goals.create(
  name: 'run or go to the gym'
)
g3 = u.goals.create(
  name: 'eat less'
)

g2.goal_completions.create(time: DateTime.now)
