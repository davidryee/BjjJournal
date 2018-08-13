class BeltsController < ApplicationController
  protect_from_forgery except: :index
  protect_from_forgery except: :show

  def new

  end

  def index
    @belts = Belt.all
  end
  def create
    @belt = Belt.new()
    accepted_belt_params = belt_params
    @belt.color=accepted_belt_params[:color]
    @belt.rank = accepted_belt_params[:rank]
    @belt.save!
    redirect_to @belt
  end

  def show
    @belt = Belt.find(params[:id])
  end

  def belt_params
    params.require(:belt).permit(:color, :rank)
  end
end