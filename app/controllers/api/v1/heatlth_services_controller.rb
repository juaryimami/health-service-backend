class Api::V1::HeatlthServicesController < ApplicationController
  def index
    @service = Service.with_attached_image.all
    render json: @servieces.map { |service| service.as_json.merge(image_url: url_for(serviece.image)) }, status: :ok
  end

  def show
    @service = Service.with_attached_image.find(params[:id])
    render json: @service.as_json.merge(image_url: url_for(@service.image)), status: :ok
  end

end
