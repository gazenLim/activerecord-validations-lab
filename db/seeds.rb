# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.destroy_all
Post.destroy_all

20.times do
    Author.create(name: Faker::Name.name ,
phone_number: Faker::PhoneNumber.cell_phone)

end

20.times do
    Post.create(title: Faker::Book.title,
    content: Faker::Books::Lovecraft.sentence,
    summary: Faker::Books::Lovecraft.paragraph_by_chars ,
    category: Faker::Book.genre)

    end
    puts "its ok"