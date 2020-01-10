require 'pry'

class Show < ActiveRecord::Base
  def self.highest_rating
    Show.maximum(:rating)
    binding.pry
  end
  
  def self.most_popular_show
    Show.find_by(:name).where(highest_rating)
  end
end