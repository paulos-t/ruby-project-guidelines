class Review < ActiveRecord::Base
    belongs_to :movie

    # def create_review()
    #     puts "Would you like to write a review? Type yes or no.\n"
    #     choice = gets.chomp.downcase
    #     if choice == "yes"
    #         puts "Please enter your review here:\n"
    #         review_text = gets.chomp
    #         puts "Please enter a rating here: (1-10)\n"
    #         review_rating = gets.chomp
    #         new_review = Review.create(movie_id: Movie.ids.sample, rating: review_rating.to_i, text: review_text)
    #     end
    # end
end