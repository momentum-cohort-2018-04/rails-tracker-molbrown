class Api::V1::InsectsController < ApplicationController
  before_action :set_insect, only: [:show, :update, :destroy]

  # GET /insects
  def index
    @insects = Insect.all
    # render json: @insects
  end

  # GET /insects/1
  def show
    @insect = Insect.find(params[:id])
    # render json: @insect
  end

  # POST /insects
  def create
    @insect = Insect.new(insect_params)

    if @insect.save
      render json: @insect, status: :created, location: @insects 
    else
      render json: @insect.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /insects/1
  def update
    if @insect.update(insect_params)
      render json: @insect
    else
      render json: @insect.errors, status: :unprocessable_entity
    end
  end

  # DELETE /insects/1
  def destroy
    @insect.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insect
      @insect = Insect.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def insect_params
      params.require(:insect).permit(:name, :species, :latitude, :longitude, :plant, :image)
    end
end
