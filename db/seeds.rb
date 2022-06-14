# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

3.times do |n|
  product  = "test-#{n+1} 投稿"
  like = "test-#{n+1} like"
  text = "test-#{n+1} text"
  date = 2022-7-11
  Check.create!(product:  product,
               like: like,
               text: text,
               date: date,
               )
end
