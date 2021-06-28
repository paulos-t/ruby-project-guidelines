puts "Destroying all movies..."
Movie.destroy_all
puts "Destroying all actors..."
Actor.destroy_all
puts "Destroying all roles..."
Role.destroy_all
puts "Destroying all reviews..."
Review.destroy_all
puts "Destroying complete."


puts "Creating movies..."
10.times do
    Movie.create(name: Faker::Movie.unique.title, year_released: rand(1990..2021))
end

puts "Creating actors..."
20.times do
    Actor.create(name: Faker::Name.unique.name, birthday: Faker::Date.birthday(min_age: 18, max_age: 65), hometown: "#{Faker::Address.city}, #{Faker::Address.state_abbr}", alma_mater: Faker::Educator.university, salary: rand(60000...500000))
end

puts "Creating roles..."
20.times do
    Role.create(movie_id: Movie.ids.sample, actor_id: Actor.ids.sample, charater: Faker::Name.unique.name, personality: "charming")
end

puts "Creating reviews..."
10.times do
    Review.create(movie_id: Movie.ids.sample, rating: rand(1..10), text: Faker::Movie.unique.quote)
end

puts "Creation complete."