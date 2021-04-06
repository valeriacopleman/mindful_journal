class ManifestationsController < ApplicationController
  before_action :set_manifestation, only: [:show, :update, :destroy]

  # GET /manifestations
  def index
    @manifestations = Manifestation.all

    render json: @manifestations
  end

  # GET /manifestations/1
  def show
    render json: @manifestation
  end

  # POST /manifestations
  def create
    @manifestation = Manifestation.new(manifestation_params)

    if @manifestation.save
      render json: @manifestation, status: :created, location: @manifestation
    else
      render json: @manifestation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /manifestations/1
  def update
    if @manifestation.update(manifestation_params)
      render json: @manifestation
    else
      render json: @manifestation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /manifestations/1
  def destroy
    @manifestation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manifestation
      @manifestation = Manifestation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def manifestation_params
      params.require(:manifestation).permit(:description, :url)
    end
end
