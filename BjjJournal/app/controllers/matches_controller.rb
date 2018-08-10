class MatchesController < ApplicationController
  protect_from_forgery except: :index
  protect_from_forgery except: :show
  def new

  end

  #get
  def index
    @matches = Match.all
  end

  #get by id: matches/id
  def show
    @match = Match.find(params[:id])
  end

  def create
    @match = Match.new()
    permitted_params = match_params
    @match.title=permitted_params[:title]
    @match.text=permitted_params[:text]
    @match.competitor_id = Competitor.create!(:name=>permitted_params[:name], :height=>permitted_params[:height], :weight=>permitted_params[:weight]).id
    @match.save!
    redirect_to @match
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
