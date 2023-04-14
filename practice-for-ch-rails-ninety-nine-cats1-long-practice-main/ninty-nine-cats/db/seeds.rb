# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ApplicationRecord.transaction do 

puts "Destroying all cats!"
Cat.destroy_all

puts "Creating new cats :)"

    cat1 = Cat.create(name: "Whiskers", birth_date: '2015/01/20', sex: "M", color: "black")

end 