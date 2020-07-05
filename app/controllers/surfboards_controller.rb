class SurfboardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_surfboard, only: [:edit, :update, :show, :destroy]

  def new
    @surfboard = Surfboard.new
    @user = current_user
  end

  def create
    @surfboard = Surfboard.new(surfboard_params)
    @surfboard.user = current_user
    if @surfboard.save
      redirect_to surfboard_path(@surfboard)
    else
      render :new
    end
  end

  def index
    @surfboards = Surfboard.all
  end

  def show
  end

  def update
    if @surfboard.update(surfboard_params)
      redirect_to surfboard_path
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    if @surfboard.bookings.count.zero?
      @surfboard.destroy
      @message = 'Your surfboard has been deleted.'
    else
      @message = 'You can not delete this surfboard because it has been booked.'
    end
  end

  private

  def find_surfboard
    @surfboard = Surfboard.find(params[:id])
  end

  def surfboard_params
    params.require(:surfboard).permit(:name, :brand, :price, :description, :deposit, :location)
  end
end
