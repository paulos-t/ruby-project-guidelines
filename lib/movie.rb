class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles
    has_many :reviews

    # Create class and instances methods here to get interesting info about data
    # Use active record query methods here

end


# CRUD actions with movies

# Create
# new_movie = Movie.create(name: "Titanic", year_released: 2010)

# Read (query methods)
# Movie.all => returns an array of Movie objects
# Movie.find(<id>) or Movie.find_by(name: "Hello")
# Movie.where(year_released: 2010) or Movie.where("year_released > 2012")
# Movie.minimum(:year_released)
# Movie.order("year_released ASC") or Movie.order("year_released DESC")

# Update
# m1 = Movie.first
# m1.update(name: "I am Legend", year_released: 2011) -- note: this is an instance method

# Delete
# Movie.first.destroy
# Movie.destroy_all