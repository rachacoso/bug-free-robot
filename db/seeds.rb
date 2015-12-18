# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MediaItem.destroy_all
ArtsType.delete_all
MediaType.delete_all
# MoodChoice.delete_all
Mood.destroy_all
Choice.delete_all
ChoiceCategory.delete_all


at_music = ArtsType.create!(name: 'Music', description: 'Description Here' )
at_theater = ArtsType.create!(name: 'Theater', description: 'Description Here' )
at_literature = ArtsType.create!(name: 'Literature', description: 'Description Here' )
at_dance = ArtsType.create!(name: 'Dance', description: 'Description Here' )

mt_video = MediaType.create!(name: 'Video', description: 'Description Here' )
mt_audio = MediaType.create!(name: 'Audio', description: 'Description Here' )
mt_text = MediaType.create!(name: 'Text', description: 'Description Here' )

m_modern = Mood.create!(name: 'Modern', description: 'Description Here' )
m_classic = Mood.create!(name: 'Classic', description: 'Description Here' )
m_avant_garde = Mood.create!(name: 'Avant Garde', description: 'Description Here' )
m_fun = Mood.create!(name: 'Fun', description: 'Description Here' )
m_serious = Mood.create!(name: 'Serious', description: 'Description Here' )

MediaItem.create!(name: 'Music Show 1', description: 'Description Here', arts_types: [at_music], media_type: mt_audio, moods: [m_modern, m_fun, m_serious])
MediaItem.create!(name: 'Music Show 2', description: 'Description Here', arts_types: [at_music], media_type: mt_video, moods: [m_avant_garde, m_fun])
MediaItem.create!(name: 'Theater 1', description: 'Description Here', arts_types: [at_theater], media_type: mt_audio, moods: [m_classic, m_serious])
MediaItem.create!(name: 'Poetry 1', description: 'Description Here', arts_types: [at_literature], media_type: mt_text, moods: [m_avant_garde, m_serious])
MediaItem.create!(name: 'Poetry Show 1', description: 'Description Here', arts_types: [at_literature], media_type: mt_video, moods: [m_modern, m_fun])


cc_books = ChoiceCategory.create!(name: 'Books', description: 'Description Here')
cc_movies = ChoiceCategory.create!(name: 'Movies', description: 'Description Here')
cc_authors = ChoiceCategory.create!(name: 'Authors', description: 'Description Here')
cc_foods = ChoiceCategory.create!(name: 'Foods', description: 'Description Here')

Choice.create!(name:'1984', choice_category: cc_books, moods: [m_classic, m_modern, m_serious])
Choice.create!(name:'Huck Finn', choice_category: cc_books, moods: [m_classic, m_modern, m_serious])
Choice.create!(name:'Hunger Games', choice_category: cc_books, moods: [m_classic, m_modern, m_serious])
Choice.create!(name:'Star Wars', choice_category: cc_movies, moods: [m_fun, m_classic])
Choice.create!(name:'Star Trek', choice_category: cc_movies, moods: [m_classic, m_serious])
Choice.create!(name:'Starman', choice_category: cc_movies, moods: [m_classic])
Choice.create!(name:'Scott Turrow', choice_category: cc_authors, moods: [m_modern])
Choice.create!(name:'F Scott Fitzgerald', choice_category: cc_authors, moods: [m_classic, m_serious])
Choice.create!(name:'Toni Morrison', choice_category: cc_authors, moods: [m_modern, m_serious])
Choice.create!(name:'Twinkies', choice_category: cc_foods, moods: [m_fun, m_modern])
Choice.create!(name:'Spaghetti', choice_category: cc_foods, moods: [m_classic, m_fun])
Choice.create!(name:'Kale', choice_category: cc_foods, moods: [m_modern, m_serious])






