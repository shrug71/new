module VehicleModule
  class MotorcyclesController < ApplicationController
    before_action :set_motorcycle, only: [:show, :update, :destroy]

    def index
      @motorcycles = Motorcycle.all
      render json: @motorcycles
    end

    def create
      byebug
      motorcycle = Motorcycle.new(motorcycle_params)

      if motorcycle.save
        render json: motorcycle, status: :created
      else
        render json: { errors: motorcycle.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def show
      render json: @motorcycle
    end

    def update
      if @motorcycle.update(motorcycle_params)
        render json: @motorcycle
      else
        render json: { errors: @motorcycle.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @motorcycle.destroy
      head :no_content
    end

    private

    def set_motorcycle
      @motorcycle = Motorcycle.find(params[:id])
    end

    def motorcycle_params
      params.require(:motorcycle).permit(:brand, :type)
    end
  end
end
