class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save

  end

  def destroy
    @list = List.find(params[:id])
  end

 private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
   end


end
