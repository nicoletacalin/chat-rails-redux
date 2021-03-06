# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Message.destroy_all
User.destroy_all
Channel.destroy_all



names = %w(general paris react)
nicknames = %w(nico xiway kevin desmond marshal)

channels = names.map do |name|
  Channel.find_or_create_by(name: name)
end

users = nicknames.map do |nickname|
  User.create(email: "#{nickname.downcase}@lewagon.com", nickname: nickname, password: "testtest")
end

20.times do
  Message.create! user: users.sample, channel: channels.sample, content: Faker::Lorem.sentences
end

puts 'Channels:'
channels.each do |channel|
  puts "- #{channel.id}: #{channel.name}"
end
