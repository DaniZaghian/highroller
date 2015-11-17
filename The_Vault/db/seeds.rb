# This file should contain all the record creation needed to seed the database with its default values.
# The  data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'
SF = City.create({name: "San Francisco",
                  lat: 37.775,
                  long: -122.418})
LD = City.create({name: "London",
                  lat: 51.5,
                  long: -0.116})
MC = City.create({name: "Moscow",
                  lat: 55.75,
                  long: 37.61})
TK = City.create({name: "Tokyo",
                  lat: 35.685,
                  long: 139.751})
NY = City.create({name: "New York",
                  lat: 40.714,
                  long:-74.00})
City.create({name: "Rio de Janeiro",
             lat: -22.906847,
             long:-43.172})
City.create({name: "Johannesburg",
             lat: -26.207333,
             long: 28.044512})
City.create({name: "Quebec City",
             lat: 46.803283,
             long:-71.242})
City.create({name: "Auckland",
             lat: -36.848,
             long:174.76})
City.create({name: "Honolulu",
             lat: 21.306,
             long:-157.85})
City.create({name: "Lagos",
             lat: 6.524,
             long:3.379})
City.create({name: "Mexico City",
             lat: 19.432,
             long:-99.133})
City.create({name: "Bangkok",
             lat: 13.756,
             long:100.501})


User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              alias: "user01",
              password: 'password',
              avatar_file_name:"default_profile_pic.jpg"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              alias: "user02",
              password: 'password',
              avatar_file_name:"default_profile_pic.jpg"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              alias: "user03",
              password: 'password',
              avatar_file_name:"default_profile_pic.jpg"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              alias: "user04",
              password: 'password',
              avatar_file_name:"default_profile_pic.jpg"})

User.create!({first_name:FFaker::Name.first_name,
              last_name:FFaker::Name.last_name,
              email:FFaker::Internet.email,
              alias: "user05",
              password: 'password',
              avatar_file_name:"default_profile_pic.jpg"})

#Standard User sql result
# User id: 1, alias: "user01", email: "a@b.com", password_digest: "$2a$10$Obs7rnw92P0SjIDJRo7/0eWZod6WeMUr.y/0ar0NlhE...", first_name: "Riley", last_name: "Gelwicks", created_at: "2015-11-16 05:33:51", updated_at: "2015-11-16 05:33:51", avatar_file_name: "default_profile_pic.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 17165, avatar_updated_at: "2015-11-16 05:33:51", slug: "user01"


Event.create({title: "Cockfighting" , user_id: 1, city_id: LD.id, body:"Make some money, meet new friends!", event_date: "2015-05-11 00:00:00" })
Event.create({title: "Mandingo Fight" , user_id: 2, city_id: SF.id, body:"It's a man fight, bro!", event_date: "2015-10-11 00:00:00" })
Event.create({title: "Thunderdome" , user_id: 3, city_id: MC.id, body:"Two men enter one man leaves", event_date: "2015-05-12 00:00:00" })
Event.create({title: "Russian Roulette" , user_id: 4, city_id: TK.id, body:"One out of six chance of going home in a body bag", event_date: "2016-07-01 00:00:00" })
Event.create({title: "Chemical Weapons Auction" , user_id: 5, city_id: NY.id, body:"Mustard Gas, two for a dollar!", event_date: "2015-08-11 00:00:00" })
Event.create({title: "Underground Street Fight" , user_id: 1, city_id: LD.id, body:"Make some money, meet new friends!", event_date: "2015-05-11 00:00:00" })
Event.create({title: "Torture Dungeon Art Show" , user_id: 2, city_id: SF.id, body:"It's a man fight, bro!", event_date: "2015-10-11 00:00:00" })
Event.create({title: "Llama Race" , user_id: 3, city_id: MC.id, body:"I don't know if they are alpacas or llamas but man can they run.", event_date: "2015-05-12 00:00:00" })
Event.create({title: "Yacht Battleship" , user_id: 4, city_id: TK.id, body:"You sunk my battleship.", event_date: "2016-07-01 00:00:00" })
Event.create({title: "Knife Fight Training - Meetup" , user_id: 5, city_id: NY.id, body:"Short swords or long?", event_date: "2015-08-11 00:00:00" })
