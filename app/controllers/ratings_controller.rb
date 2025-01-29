class RatingsController < ApplicationController
    before_action :set_movie
    def create
      @movie = Movie.find(params[:movie_id])
      @rating = @movie.ratings.build(rating_params)
      @rating.user = current_user
  
      if @rating.save
        puts "Rating saved successfully!" # Debug output
        redirect_to movie_path(@movie), notice: "Your rating has been submitted!"
      else
        puts "Error saving rating: #{@rating.errors.full_messages}" # Debug output
        flash[:alert] = "There was an error submitting your rating."
        redirect_to movie_path(@movie), alert: "There was an error submitting your rating."
      end
    end
  
    private
  
    def rating_params
      params.require(:rating).permit(:rating)
    end
  end
  