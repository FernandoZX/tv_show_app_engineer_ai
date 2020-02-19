# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

channel_espn = TvChannel.find_or_create_by(name: 'ESPN')
channel_espn.tv_shows.find_or_create_by(
  name: 'El Clasico Real madrid vs Barcelona',
  timing: DateTime.new(DateTime.now.year, 3, 1, 15, 30)
)
channel_espn.tv_shows.find_or_create_by(
  name: 'Champions League Liverpool vs atletico de madrid',
  timing: DateTime.new(DateTime.now.year, 3, 14, 13, 30)
)
channel_espn.tv_shows.find_or_create_by(
  name: 'Champions League Barcelona vs Napoli',
  timing: DateTime.new(DateTime.now.year, 3, 15, 13, 30)
)
channel_fox = TvChannel.find_or_create_by(name: 'FOX')
channel_fox.tv_shows.find_or_create_by(
  name: 'The Simpsons',
  timing: DateTime.new(DateTime.now.year,
                       DateTime.now.month,
                       DateTime.now.day, 21)
)
channel_fox.tv_shows.find_or_create_by(
  name: 'Futurama',
  timing: DateTime.new(DateTime.now.year,
                       DateTime.now.month,
                       DateTime.now.day, 20)
)
channel_fox_sport = TvChannel.find_or_create_by(name: 'Fox Sport')
channel_fox_sport.tv_shows.find_or_create_by(
  name: 'El Clasico Real madrid vs Barcelona',
  timing: DateTime.new(DateTime.now.year, 3, 1, 15, 30)
)
channel_fox_sport.tv_shows.find_or_create_by(
  name: 'Champions League Liverpool vs atletico de madrid',
  timing: DateTime.new(DateTime.now.year, 3, 14, 13, 30)
)
channel_fox_sport.tv_shows.find_or_create_by(
  name: 'Champions League Barcelona vs Napoli',
  timing: DateTime.new(DateTime.now.year, 3, 15, 13, 30)
)
