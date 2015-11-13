# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'
SF = City.create({name: "San Francisco"})
User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              current_city_id: SF.id,
              alias: "user01",
              password: 'password',
              profile_pic_url: "http://placehold.it/150x150"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              current_city_id: SF.id,
              alias: "user02",
              password: 'password',
              profile_pic_url: "http://placehold.it/150x150"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              current_city_id: SF.id,
              alias: "user03",
              password: 'password',
              profile_pic_url: "http://placehold.it/150x150"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              current_city_id: SF.id,
              alias: "user04",
              password: 'password',
              profile_pic_url: "http://placehold.it/150x150"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              current_city_id: SF.id,
              alias: "user05",
              password: 'password',
              profile_pic_url: "http://placehold.it/150x150"})

Event.create({title: "Cockfighting" , user_id: 1, city_id: SF.id, body:"Make some money, meet new friends!" })
Event.create({title: "Mandingo Fight" , user_id: 2, city_id: SF.id, body:"It's a man fight, bro!" })
Event.create({title: "Thunderdome" , user_id: 3, city_id: SF.id, body:"Two men enter one man leaves" })
Event.create({title: "Russian Roulette" , user_id: 4, city_id: SF.id, body:"One out of six chance of going home in a body bag" })
Event.create({title: "Chemical Weapons Auction" , user_id: 5, city_id: SF.id, body:"Mustard Gas, two for a dollar!" })
