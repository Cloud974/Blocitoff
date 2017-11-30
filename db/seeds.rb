require 'faker'

5.times do
  u = User.new(
    email:  Faker::Internet.unique.email,
    password: Faker::Internet.password,
  )
  u.save!(:validate => false)
end
users = User.all

20.times do
  List.create!(
    user: users.sample,
    name: Faker::RickAndMorty.character
  )
end
lists = List.all

40.times do
  Task.create!(
    list: lists.sample,
    description: Faker::RickAndMorty.location,
    notes: Faker::RickAndMorty.quote,
    duedate: Faker::Date.forward(60)
  )
end

puts "Seed Finished"
puts "#{User.count} users created"
puts "#{List.count} lists created"
puts "#{Task.count} tasks created"
