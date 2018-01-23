class PersonnagesController < ApplicationController
  before_action :set_personnage, only: [:show, :edit, :update, :destroy]

  # GET /personnages
  # GET /personnages.json
  def index
    @personnages = Personnage.all
  end

  # GET /personnages/1
  # GET /personnages/1.json
  def show
  end

  # GET /personnages/new
  def new
    @personnage = Personnage.new
  end

  # GET /personnages/1/edit
  def edit
  end

  # POST /personnages
  # POST /personnages.json
  def create
    @personnage = Personnage.new(personnage_params)

    respond_to do |format|
      if @personnage.save
        format.html { redirect_to @personnage, notice: 'Personnage was successfully created.' }
        format.json { render :show, status: :created, location: @personnage }
      else
        format.html { render :new }
        format.json { render json: @personnage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personnages/1
  # PATCH/PUT /personnages/1.json
  def update
    respond_to do |format|
      if @personnage.update(personnage_params)
        format.html { redirect_to @personnage, notice: 'Personnage was successfully updated.' }
        format.json { render :show, status: :ok, location: @personnage }
      else
        format.html { render :edit }
        format.json { render json: @personnage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnages/1
  # DELETE /personnages/1.json
  def destroy
    @personnage.destroy
    respond_to do |format|
      format.html { redirect_to personnages_url, notice: 'Personnage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personnage
      @personnage = Personnage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personnage_params
      params.require(:personnage).permit(:nom, :description)
    end
end
