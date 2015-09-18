Destination.delete_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Destination.create({ city: 'London', country: 'England', books: ['The Hobbit', 'The Adventures of Sherlock Holmes', "The Cuckoo's Calling", "At Bertram's Hotel", "Bridget Jones's Diary", 'A Tale of Two Cities']})

Destination.create({ city: 'New York', country: 'USA', books: ['The Great Gatsby', 'The Age of Innocence', 'Tales from the Tummy Trilogy', 'New York Diaries', "The Amazing Adventure of Kavalier & Clay"]})
