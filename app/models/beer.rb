class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :ratings

  def average_rating
    sum = self.ratings.reduce(0) {|acc, cur| acc + cur.score}
    avg = self.ratings.empty? ? 0 : sum/self.ratings.count
    avg.to_f
  end

  def to_s
    self.name + ", " + self.brewery.name
  end
end
