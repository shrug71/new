module VehicleModule
  class TrucksController < ApplicationController
    before_action :set_truck, only: [:show, :update, :destroy]

    def index
      @trucks = Truck.all
      render json: @trucks
    end

    def create
      truck = Truck.new(truck_params)

      if truck.save
        render json: truck, status: :created
      else
        render json: { errors: truck.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def show
      render json: @truck
    end

    def update
      if @truck.update(truck_params)
        render json: @truck
      else
        render json: { errors: @truck.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @truck.destroy
      head :no_content
    end

    private

    def set_truck
      @truck = Truck.find(params[:id])
    end

    def truck_params
      params.require(:truck).permit(:brand, :type)
    end
  end
end
