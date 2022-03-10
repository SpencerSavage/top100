class Api::BillboardController < ApplicationController

  before_action :set_billboard, only: [:show, :update, :destroy]

  def index
    render json: billboard.all
  end

  def show
    render json: @billboard
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @billboard.save
      render json: @billboard
    else
      render json: { errors: @sub.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @billboard.update(billboard_params)
      render json: @billboard
    else
      render json: { errors: @billboard.errors }, status: :unprocessable_entity
    end
  end


  def destroy
    @billboard.destroy
    render json: { message: 'Sub delete' }
  end

  private

  def billboard_params
    params.require(:sub).permit(:title)
  end

  def set_billboard
    @billboard = Billboard.find(params[:id])
  end
  
end

