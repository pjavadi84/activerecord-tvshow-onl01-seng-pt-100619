require 'pry'

class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
  end
  
  def self.most_popular_show
    # Show.where("#{highest_rating}").order(:name)
    show = Show.where("#{highest_rating}").order(rating: :desc)
    show[0].name
  end
end