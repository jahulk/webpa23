module RatingAverage
  extend ActiveSupport::Concern

  def average_rating
    sum = self.ratings.reduce(0) {|acc, cur| acc + cur.score}
    avg = self.ratings.empty? ? 0 : sum/self.ratings.count
    avg.to_f
  end
end