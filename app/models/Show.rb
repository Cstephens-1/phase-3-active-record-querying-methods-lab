class Show < ActiveRecord::Base

        def self.highest_rating(rating: "rating")
            Show.maximum(rating)
        end

        def self.most_popular_show(rating: "rating")
            Show.order(rating).last
         end

        def self.lowest_rating(rating: "rating")
            Show.minimum(rating)
        end

        def self.least_popular_show(rating: "rating")
            Show.order(rating).first
        end

        def self.ratings_sum(rating: "rating")
            Show.sum(rating)
        end

        def self.popular_shows(rating: "rating")
            Show.where("rating > ?", 5)

        end

        def self.shows_by_alphabetical_order(name: "name")
            Show.order(name: :asc)
        end




end