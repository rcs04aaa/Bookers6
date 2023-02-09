class FavoritesController < ApplicationController
  
  def create
    @post_favorite = Favorite.new(user_id: current_user.id, book_id: params[:book_id])
    @post_favorite.save
    redirect_to book_path(params[:book_id]) 
  end
  
  def destroy
    @post_favorite = Favorite.find_by(user_id: current_user.id, book_id: params[:book_id])
    @post_favorite.destroy
    redirect_to book_path(params[:book_id])
  end
  
end
