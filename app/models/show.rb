class Show < ActiveRecord::Base
    def self.highest_rating
        show = Show.maximum(:rating)
        show
    end

    def self.lowest_rating
        show = Show.minimum(:rating)
        show
    end

    def self.most_popular_show
        Show.all.each do |r|
            if r.rating == highest_rating
                return r
            end
        end
    end

    def self.least_popular_show
        Show.all.each do |r|
            if r.rating == lowest_rating
                return r 
            end
        end
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        array = []
        Show.all.collect do |r|
            if r.rating > 5
                array << r
            end
        end
        array
    end

    def self.shows_by_alphabetical_order
        Show.order(name: :asc)

    end
            


end