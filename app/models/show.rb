class Show < ActiveRecord::Base

	def self.highest_rating
		self.maximum(:rating)
	end

	def self.most_popular_show
	  # returns the tv show with the highest rating
	  max_rating = self.highest_rating
	  self.find_by(rating: max_rating)
	end

	def self.lowest_rating
		# returns the TV show with the lowest rating
		self.minimum(:rating)
	end

	def self.least_popular_show
		# returns the tv show with the lowest rating
		min_rating = self.lowest_rating
		self.find_by(rating: min_rating)
	end

	def self.ratings_sum
		# returns the sum of all the ratings of all the tv shows
		self.sum(:rating)
	end

	def self.popular_shows
		# returns an array of all of the shows with a rating above 5
		self.where("rating > ?", 5)
	end

	def self.shows_by_alphabetical_order
		# returns an array of all of the shows, listed in alphabetical order
		self.order(:name)
	end
end