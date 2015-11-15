# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'
SF = City.create({name: "San Francisco"})
LD = City.create({name: "London"})
User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              alias: "user01",
              password: 'password',
              profile_pic_url: "http://placehold.it/150x150"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              alias: "user02",
              password: 'password',
              profile_pic_url: "http://placehold.it/150x150"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              alias: "user03",
              password: 'password',
              profile_pic_url: "http://placehold.it/150x150"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              alias: "user04",
              password: 'password',
              profile_pic_url: "http://placehold.it/150x150"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              alias: "user05",
              password: 'password',
              profile_pic_url: "http://placehold.it/150x150"})

Event.create({title: "Cockfighting" , user_id: 1, city_id: LD.id, body:"Make some money, meet new friends!", event_date: "2015-05-11 00:00:00" })
Event.create({title: "Mandingo Fight" , user_id: 2, city_id: SF.id, body:"It's a man fight, bro!", event_date: "2015-27-11 00:00:00" })
Event.create({title: "Thunderdome" , user_id: 3, city_id: SF.id, body:"Two men enter one man leaves", event_date: "2015-05-12 00:00:00" })
Event.create({title: "Russian Roulette" , user_id: 4, city_id: LD.id, body:"One out of six chance of going home in a body bag", event_date: "2016-07-1 00:00:00" })
Event.create({title: "Chemical Weapons Auction" , user_id: 5, city_id: SF.id, body:"Mustard Gas, two for a dollar!", event_date: "2015-18-11 00:00:00" })
