# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts 'Creating 100 fake articles...'
100.times do
  article = Article.new(
    title: Faker::Book.title,
    content: Faker::Quote.famous_last_words
  )
  article.save!
end
puts 'Finished!'
