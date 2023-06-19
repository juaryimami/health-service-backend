class Api::V1::HeatlthServicesController < ApplicationController
  def index
    @services = Service.with_attached_image.all
    render json: @services, status: :ok
  end

  def show
    @service = Service.with_attached_image.find(params[:id])
    render json: @service.as_json.merge(image_url: url_for(@service.image)), status: :ok
  end

  def create
    @service = Service.new(service_params)
    @service.image.attach(params[:service][:image]) if params[:service][:image].present?

    if @service.save
      render json: @service, status: :created
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @service = Service.find(params[:id])
    if @service.destroy
      render json: { id: @service.id, message: 'Service was successfully deleted' }
    else
      render json: { error: 'Service could not be deleted' }, status: :bad_request
    end
  end

  private

  def service_params
    params.require(:service).permit(:service_name, :description, :price, :service_date, :doctor_name)
  end
end
