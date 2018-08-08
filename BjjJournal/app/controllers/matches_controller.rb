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
    @match = Match.new(match_params)

    @match.save
    redirect_to @match
  end

  def new

  end

  def destroy
    Match.delete(params[:id])
    redirect_to matches_path
  end

  def match_params
    params.require(:match).permit(:title, :text)
  end
end
