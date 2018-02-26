class StudioController < ApplicationController
  before_action :set_studio, only: [:show, :edit, :update, :destroy]


  def index
    @studios = Studio.all
  end

  def show; end

  def new
    @studios = Studio.new
  end

  def create
    @studio= Studio.new(
      params.require(:studio).permit(:nom))
      if @studio.save
        redirect_to(@studio)
      else
        render 'new'
      end
  end

  def edit; end

  def update
    if @studio.update(
      params.require(:studio).permit(:nom))
      redirect_to(@studio)
    else
      render 'edit'
    end
  end

  def destroy
    @studio.destroy
    redirect_to(studios_path)
  end

  private

  def set_studio
    @studio = studio.find(params[:id])
  end

end
