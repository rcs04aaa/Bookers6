class FavoritesController < ApplicationController
  
  def create
    book = Book.find(params[:book_id])
    @post_favorite = Favorite.new(user_id: current_user.id, book_id: params[:book_id])
    @post_favorite.save
  end
  
  def destroy
    book = Book.find(params[:book_id])
    @post_favorite = Favorite.find_by(user_id: current_user.id, book_id: params[:book_id])
    @post_favorite.destroy
  end
  
end
