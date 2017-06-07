# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  p = Post.create(title: Faker::Pokemon.name, rating: rand(5))
  50.times do
    Comment.create(post: p, body: Faker::Cat.name)
  end
end