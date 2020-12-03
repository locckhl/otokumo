class LikesController < ApplicationController
   before_action :find_song
   before_action :find_like, only: [:destroy]
   
  def create
  if already_liked?
    flash[:notice] = "You can't like more than once"
  else
    @song.likes.create(user_id: current_user.id)
  end
  redirect_to song_path(@song)
  end
  
  def destroy
  if !(already_liked?)
    flash[:notice] = "Cannot unlike"
  else
    @like.destroy
  end
  redirect_to song_path(@song)
  end
  
  private
  def find_song
    @song = Song.find(params[:song_id])
  end
  
  def find_like
   @like = @song.likes.find(params[:id])
  end
  
  def already_liked?
  Like.where(user_id: current_user.id, song_id:
  params[:song_id]).exists?
  end
end