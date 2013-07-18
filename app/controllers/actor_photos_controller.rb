class ActorPhotosController < ApplicationController
  def index
  	@actor = Actor.find(params[:actor_id])
    @actor_photos = @actor.actor_photos
    @actor_photo = ActorPhoto.new 
  end

  def create
  	ap = ActorPhoto.new
    ap.actor_id = params[:actor_id]
    ap.photo = params[:actor_photo][:photo]
    ap.caption = params[:actor_photo][:caption] 
    @actor=Actor.find(params[:actor_id])
    # @actor_photo = @actor.actor_photos.new(params[:actor_photo][:photo])
    if ap.save
      redirect_to actor_actor_photos_path(@actor), notice: "Actor Photo created."
    else
      render :new
    end
  end
end
