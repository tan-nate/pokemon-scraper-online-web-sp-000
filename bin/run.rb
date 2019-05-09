require_relative "environment"
require 'pry'

Scraper.new(@db).scrape
SQLRunner.new(@db).execute_create_hp_column

Pokemon.save('Pikachu', 'electric', @db)
Pokemon.save('Magikarp', 'water', @db)

pikachu = Pokemon.find(1, @db)


all_pokemon = @db.execute("SELECT * FROM pokemon;")

binding.pry