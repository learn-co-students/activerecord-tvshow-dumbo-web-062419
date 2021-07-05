def highest_rating
  Show.maximum(:rating)
end
