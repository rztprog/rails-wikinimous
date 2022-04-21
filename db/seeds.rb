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
▄▄▄  ·▄▄▄▄•▄▄▄▄▄▄ ▄▄▄·▄▄▄         ▄▄ • 
▀▄ █·▪▀·.█▌▀•██ ▀▐█ ▄█▀▄ █· ▄█▀▄ ▐█ ▀ ▪
▐▀▀▄ ▄█▀▀▀•  ▐█.▪ ██▀·▐▀▀▄ ▐█▌.▐▌▄█ ▀█▄
▐█•█▌█▌▪▄█▀  ▐█▌·▐█▪·•▐█•█▌▐█▌.▐▌▐█▄▪▐█
.▀  ▀·▀▀▀ •  ▀▀▀ .▀   .▀  ▀ ▀█▄▀▪·▀▀▀▀ 
"

puts "
░▒█░░▒█░░▀░░█░▄░░▀░░█▀▀▄░░▀░░█▀▄▀█░▄▀▀▄░█░▒█░█▀▀
░▒█▒█▒█░░█▀░█▀▄░░█▀░█░▒█░░█▀░█░▀░█░█░░█░█░▒█░▀▀▄
░▒▀▄▀▄▀░▀▀▀░▀░▀░▀▀▀░▀░░▀░▀▀▀░▀░░▒▀░░▀▀░░░▀▀▀░▀▀▀
"

# Cleaning all DB model
puts "=============================="
puts "Cleaning Article database..."
Article.destroy_all
puts "Done"
puts "=============================="

# Create users
puts "Creating some post..."
puts "How much posts you want ?"
puts "> "
loop_n = STDIN.gets.chomp

puts "Creating #{loop_n} fake tasks, please wait..."
loop_n.to_i.times do
  article = Article.new(
    title:    "#{Faker::Verb.base.capitalize} #{Faker::ProgrammingLanguage.name}",
    content:  Faker::Lorem.paragraph_by_chars(number: rand(256..1024), supplemental: false)
  )
  article.save!
end

puts "=============================="
puts "Congrats, #{Article.count} post(s) was created!"
puts "=============================="