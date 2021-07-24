class Admins::GenresController < ApplicationController
 before_action :authenticate_admin!
 def index
  @genres = Genre.all
  @genre = Genre.new
 end
 def edit
  @genre = Genre.find(params[:id])
 end
 def create
   @genre = Genre.new(genre_params)
   @genre.save
   redirect_to admins_genres_path
 end

 def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
     flash[:genre_success] = "変更しました"
     redirect_to admins_genres_path
    else
     flash[:genre_danger] = "変更できませんでした"
     redirect_to edit_admins_genre_path(genre)
    end
 end

 private

 def genre_params
    params.require(:genre).permit(:name, :is_enabled)
 end
end