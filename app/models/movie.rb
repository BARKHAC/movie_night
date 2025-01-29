class Movie < ApplicationRecord
    has_many :ratings
    has_many :users, through: :ratings

    def average_rating
        ratings.average(:rating).to_f
      end
end
