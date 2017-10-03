class MatchesController < ApplicationController
  protect_from_forgery except: :index
  protect_from_forgery except: :show
  def new

  end

  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
    #redirect_to @match
  end

  def create
    @match = Match.new(match_params)

    @match.save
    redirect_to @match
  end

  def match_params
    params.require(:match).permit(:title, :text)
  end
end
