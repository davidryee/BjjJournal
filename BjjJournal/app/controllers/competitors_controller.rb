class CompetitorsController < ApplicationController
  protect_from_forgery except: :index
  protect_from_forgery except: :show
  def new

  end

  #get
  def index

  end

  #get by id: matches/id
  def show
    @competitor = Competitor.find(params[:id])
  end

  def create
    competitor= Competitor.new(params)
    competitor.save!
  end

  def new

  end

  def destroy
    Match.delete(params[:id])
    redirect_to matches_path
  end

  def match_params
    params.require(:match).permit(:title, :text, :name, :height, :weight)
  end
end
