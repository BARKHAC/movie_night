# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb

Movie.create([
  { title: 'The Matrix', description: 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', release_year: 1999, genre: 'Sci-Fi' },
  { title: 'Inception', description: 'A thief who enters the dreams of others to steal secrets from their subconscious is given the inverse task of planting an idea into the mind of a CEO.', release_year: 2010, genre: 'Action' },
  { title: 'The Lion King', description: 'Lion prince Simba and his father are targeted by his evil uncle, who wants to ascend the throne himself.', release_year: 1994, genre: 'Animation' }
])

