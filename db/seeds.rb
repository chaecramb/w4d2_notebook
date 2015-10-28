# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Note.delete_all
Note.create!(title: 'CodeClan W4D2 notes', note: 'Learned lots about Rails models and migrations. Made Quiditch app :).')
Note.create!(title: 'To-do list', note: 'Buy potatoes, go snowboarding, build spaceship, land on mars.')
Note.create!(title: 'Workout 27/10/15', note: 'Lots of push-ups.')
Note.create!(title: 'How to build a treehouse', note: 'Get sticks, climb up tree with sticks, build house in tree.')

Tag.delete_all
code_clan = Tag.create!(name: 'CodeClan')
ruby = Tag.create!(name: 'Ruby')
programming = Tag.create!(name: 'Programming')
to_do = Tag.create!(name: 'To-do')
workout = Tag.create!(name: 'Workout')
diy = Tag.create!(name: 'DIY')
trees = Tag.create!(name: 'Trees')

Note.first.tags << code_clan << ruby << programming
Note.first(2).last.tags << to_do
Note.first(3).last.tags << workout
Note.last.tags << diy << trees

