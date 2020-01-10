require 'pry'

class Show < ActiveRecord::Base
  
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.most_popular_show
    show = Show.where("#{highest_rating}").order(rating: :desc)
    show[0]
  end
  
  def self.lowest_rating
    Show.minimum(:rating)
  end
  
  def self.least_popular_show
    show = Show.where("#{lowest_rating}").order(rating: :asc)
    show[0]
  end
  
  def self.ratings_sum
    Show.sum("rating")
  end
  
  def self.popular_shows
    Show.where("rating > 5")
  end
  
  def self.shows_by_alphabetical_order
    Show.where()
  end
end