class GenreController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update, :destroy]


  def index
    @genres = Genre.all
  end

  def show; end

  def new
    @genres = Genre.new
  end

  def create
    @genre= Genre.new(
      params.require(:genre).permit(:nom))
      if @genre.save
        redirect_to(@genre)
      else
        render 'new'
      end
  end

  def edit; end

  def update
    if @genre.update(
      params.require(:genre).permit(:nom))
      redirect_to(@genre)
    else
      render 'edit'
    end
  end

  def destroy
    @studio.destroy
    redirect_to(genres_path)
  end

  private

  def set_genre
    @genre = genre.find(params[:id])
  end

end
