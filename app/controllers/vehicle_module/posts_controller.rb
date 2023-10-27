module VehicleModule
  class PostsController < ApplicationController
  #before_action :set_post, only: [:create,:show, :update, :destroy]

  # GET /vehicle_module/posts
  def index
    @posts = VehicleModule::Post.all
    render json: @posts
  end

  # GET /vehicle_module/posts/1
  def show
    render json: @post
  end

  # POST /vehicle_module/posts
    def create
    @post = VehicleModule::Post.new(post_params)

    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /vehicle_module/posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vehicle_module/posts/1
  def destroy
    @post.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  # def set_post
  #   @post = VehicleModule::Post.find(params[:id])
  # end

  # Only allow a trusted parameter "white list" through.
  def post_params
    params.permit(:name, :description, :img_url)
  end
end
end
