class User < ApplicationRecord
    has_many :ratings
    has_many :movie_nights
end
