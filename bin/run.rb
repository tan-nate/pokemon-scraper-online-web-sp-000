require_relative "environment"
require 'pry'

Scraper.new(@db).scrape
SQLRunner.new(@db).execute_create_hp_column

Pokemon.save('Pikachu', 'electric', @db)
Pokemon.save('Magikarp', 'water', @db)

bulbasaur.alter_hp(59, @db)

pokemon = @db.execute("SELECT * FROM pokemon")

bulbasaur = Pokemon.find(1, @db)

puts pokemon