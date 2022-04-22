# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
# Run rails db:setup

puts "
░▒█░░▒█░░▀░░█░▄░░▀░░█▀▀▄░░▀░░█▀▄▀█░▄▀▀▄░█░▒█░█▀▀
░▒█▒█▒█░░█▀░█▀▄░░█▀░█░▒█░░█▀░█░▀░█░█░░█░█░▒█░▀▀▄
░▒▀▄▀▄▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░▀▀▀░▀░░▒▀░░▀▀░░░▀▀▀░▀▀▀
"

# Cleaning all DB model
puts "=============================="
count = Article.count()
puts "Found #{count} Article(s) in DB"
puts "Cleaning Article database..."
Article.destroy_all
puts "=============================="

# Create loop_n number of article(s)
puts "How much article(s) you want ?"
puts "> "
loop_n = STDIN.gets.chomp

# Create fake article
puts "Creating #{loop_n} fake articles, please wait..."
loop_n.to_i.times do
  article = Article.new(
    title:    "#{Faker::Verb.base.capitalize} #{Faker::ProgrammingLanguage.name}",
    content:  Faker::Lorem.paragraph_by_chars(number: rand(256..1024), supplemental: false)
  )
  article.save!
end

# Done
puts "=============================="
puts "Congrats, #{Article.count} article(s) was created!"
puts "=============================="