class MoviePhotosController < ApplicationController
  def index 

  end

  def new
  end
  
  def create
    mp = MoviePhoto.new
    mp.movie_id = params[:movie_id]
    mp.photo = params[:movie_photo][:photo]
    @movie=Movie.find(params[:movie_id])
    # @movie_photo = @movie.movie_photos.new(params[:movie_photo][:photo])
    if mp.save
      redirect_to @movie, notice: "Movie Photo created."
    else
      render :new
    end
  end

    def movie_photo_params
      params.require(:movie_photo).permit(:movie_id, :photo, :caption)
    end
end
