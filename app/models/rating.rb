class Movie < ApplicationRecord
  has_many :ratings, dependent: :destroy
end

class Rating < ApplicationRecord
  belongs_to :movie
  belongs_to :user # If ratings are tied to users
end

class User < ApplicationRecord
  has_many :ratings, dependent: :destroy
end
