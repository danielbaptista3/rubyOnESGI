class ProducteursController < ApplicationController
  before_action :set_producteur, only: [:show, :edit, :update, :destroy]

  # GET /producteurs
  # GET /producteurs.json
  def index
    @producteurs = Producteur.all
  end

  # GET /producteurs/1
  # GET /producteurs/1.json
  def show
  end

  # GET /producteurs/new
  def new
    @producteur = Producteur.new
  end

  # GET /producteurs/1/edit
  def edit
  end

  # POST /producteurs
  # POST /producteurs.json
  def create
    @producteur = Producteur.new(producteur_params)

    respond_to do |format|
      if @producteur.save
        format.html { redirect_to @producteur, notice: 'Producteur was successfully created.' }
        format.json { render :show, status: :created, location: @producteur }
      else
        format.html { render :new }
        format.json { render json: @producteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producteurs/1
  # PATCH/PUT /producteurs/1.json
  def update
    respond_to do |format|
      if @producteur.update(producteur_params)
        format.html { redirect_to @producteur, notice: 'Producteur was successfully updated.' }
        format.json { render :show, status: :ok, location: @producteur }
      else
        format.html { render :edit }
        format.json { render json: @producteur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producteurs/1
  # DELETE /producteurs/1.json
  def destroy
    @producteur.destroy
    respond_to do |format|
      format.html { redirect_to producteurs_url, notice: 'Producteur was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producteur
      @producteur = Producteur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producteur_params
      params.require(:producteur).permit(:nom)
    end
end
