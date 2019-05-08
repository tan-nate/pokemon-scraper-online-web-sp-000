require_relative "environment"
require 'pry'

Scraper.new(@db).scrape
SQLRunner.new(@db).execute_create_hp_column

all_pokemon = @db.execute("SELECT * FROM pokemon;")

binding.pry