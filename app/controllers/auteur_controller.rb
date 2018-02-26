class AuteurController < ApplicationController
  before_action :set_auteurs, only: [:show, :edit, :update, :destroy]


  def index
    @auteurs = Auteur.all
  end

  def show; end

  def new
    @auteurs = Auteurs.new
  end

  def create
    @auteur = Auteur.new(
      params.require(:auteur).permit(:nom))
      if @auteur.save
        redirect_to(@auteur)
      else
        render 'new'
      end
  end

  def edit; end

  def update
    if @auteur.update(
      params.require(:auteur).permit(:nom))
      redirect_to(@auteur)
    else
      render 'edit'
    end
  end

  def destroy
    @auteur.destroy
    redirect_to(auteurs_path)
  end

  private

  def set_auteur
    @auteur = auteur.find(params[:id])
  end

end
