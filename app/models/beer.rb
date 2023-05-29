class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :ratings

  def average_rating
    sum = 0
    self.ratings.each do |rating|
      sum += rating.score
    end
    
    avg = self.ratings.empty? ? 0 : sum/self.ratings.count
    avg.to_f
  end
end
