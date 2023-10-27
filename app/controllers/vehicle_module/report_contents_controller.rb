module VehicleModule
  class ReportContentsController < ApplicationController
  before_action :set_report_content, only: [:show, :update, :destroy]

  def index
    @report_contents = VehicleModule::ReportContent.all
    render json: @report_contents
  end

 
  def show
    render json: @report_content
  end

  def create
     byebug
    @report_content = VehicleModule::ReportContent.new(report_content_params)

    # If reason is "something_else", prompt for other_reason
    if @report_content.something_else? && params[:other_reason].blank?
      render json: { error: 'Please provide other_reason for "something_else" reason.' }, status: :unprocessable_entity
    elsif @report_content.save
      render json: @report_content, status: :created
    else
      render json: @report_content.errors, status: :unprocessable_entity
    end
  end

  private

  def set_report_content
    @report_content = VehicleModule::ReportContent.find(params[:id])
  end

  def report_content_params
    params.permit(:content_id, :reason,:other_reason)
  end
end
end
