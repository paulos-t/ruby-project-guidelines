puts "Destroying all movies..."
Movie.destroy_all
puts "Destroying all actors..."
Actor.destroy_all
# puts "Destroying all roles..."
# Role.destroy_all
# puts "Destroying all reviews..."
# Review.destroy_all
puts "Destroying complete."


puts "Creating movies..."
10.times do
    Movie.create(name: Faker::Movie.unique.title, year_released: rand(1990..2021))
end

puts "Creating actors..."
20.times do
    Actor.create(name: Faker::Name.unique.name, salary: rand(60000...500000), alma_mater: Faker::University.unique.name)
end
