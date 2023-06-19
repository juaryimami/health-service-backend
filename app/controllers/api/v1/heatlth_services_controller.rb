class Api::V1::HeatlthServicesController < ApplicationController
  before_action :set_api_v1_heatlth_service, only: %i[ show update destroy ]

  # GET /api/v1/heatlth_services
  def index
    @api_v1_heatlth_services = Api::V1::HeatlthService.all

    render json: @api_v1_heatlth_services
  end

  # GET /api/v1/heatlth_services/1
  def show
    render json: @api_v1_heatlth_service
  end

  # POST /api/v1/heatlth_services
  def create
    @api_v1_heatlth_service = Api::V1::HeatlthService.new(api_v1_heatlth_service_params)

    if @api_v1_heatlth_service.save
      render json: @api_v1_heatlth_service, status: :created, location: @api_v1_heatlth_service
    else
      render json: @api_v1_heatlth_service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/heatlth_services/1
  def update
    if @api_v1_heatlth_service.update(api_v1_heatlth_service_params)
      render json: @api_v1_heatlth_service
    else
      render json: @api_v1_heatlth_service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/heatlth_services/1
  def destroy
    @api_v1_heatlth_service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_heatlth_service
      @api_v1_heatlth_service = Api::V1::HeatlthService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_heatlth_service_params
      params.fetch(:api_v1_heatlth_service, {})
    end
end
