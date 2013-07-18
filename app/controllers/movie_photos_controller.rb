class MoviePhotosController < ApplicationController
  def index 

  end

  def new
  end
  
  def create
    debugger
    mp = MoviePhoto.new
    mp.movie_id = params[:movie_id]
    mp.photo = params[:movie_photo][:photo]
    mp.caption = params[:movie_photo][:caption] 
    @movie=Movie.find(params[:movie_id])
    # @movie_photo = @movie.movie_photos.new(params[:movie_photo][:photo])
    if mp.save
      redirect_to edit_movie_path(@movie), notice: "Movie Photo created."
    else
      render :new
    end
  end

    def movie_photo_params
      params.require(:movie_photo).permit(:caption, :movie_id, :photo)
    end
end
