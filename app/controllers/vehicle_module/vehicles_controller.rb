module VehicleModule
  class VehiclesController < ApplicationController
    before_action :set_vehicle, only: [:show, :update, :destroy]

    def index
      @vehicles = Vehicle.all
      render json: @vehicles
    end

    def create
      vehicle = Vehicle.new(vehicle_params)

      if vehicle.save
        render json: vehicle, status: :created
      else
        render json: { errors: vehicle.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def show
      render json: @vehicle
    end

    def update
      if @vehicle.update(vehicle_params)
        render json: @vehicle
      else
        render json: { errors: @vehicle.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @vehicle.destroy
      head :no_content
    end

    private

    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    def vehicle_params
      params.require(:vehicle).permit(:brand, :type)
    end
  end
end
