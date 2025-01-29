class MoviesController < ApplicationController
    def index
      @movies = Movie.all
    end
  
    def show
      @movie = Movie.find(params[:id])
      @rating = @movie.ratings.build # Prepares a new rating for the form
    end
  end
