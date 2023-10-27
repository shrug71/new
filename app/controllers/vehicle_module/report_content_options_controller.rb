module VehicleModule
  class ReportContentOptionsController < ApplicationController
    
    def index
      @options = ReportContentOption.all
      render json: @options
    end

    def show
      @option = ReportContentOption.find(params[:id])
      render json: @option
    end

    def create
      @option = ReportContentOption.new(option_params)

      if @option.save
        render json: @option, status: :created
      else
        render json: @option.errors, status: :unprocessable_entity
      end
    end

    private

    def option_params
      params.permit(:name)
    end
  end
end
