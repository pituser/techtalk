# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
u1 = User.create(name: 'Fritz')
u2 = User.create(name: 'Heike')
u3 = User.create(name: 'Alfons')
u4 = User.create(name: 'Kriemhild')
u5 = User.create(name: 'Charles')
u6 = User.create(name: 'Diana')

Topic.delete_all
Topic.create(title: 'RESTful Web Services', description: 'Lore ipsum ..', user_id: u1.id)
Topic.create(title: 'How to avoid bugs', description: 'Isds sd sd sds ', user_id: u1.id)
Topic.create(title: 'I am the greatest', description: 'bla bla bla bla', user_id: u4.id)

