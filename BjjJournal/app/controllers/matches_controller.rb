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

    @match.title=match_params[:title]
    @match.text=match_params[:text]
    accepted_competitor_params = competitor_params
    height_as_int = accepted_competitor_params[:height].to_i
    puts "height as int class is: #{height_as_int.class}"
    weight_as_int = accepted_competitor_params[:weight].to_i
    competitor = Competitor.create(name: accepted_competitor_params[:name],
                                   height: height_as_int,
                                   weight: weight_as_int)

    @match.competitor = competitor
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
    params.require(:match).permit(:title, :text)
  end

  def competitor_params
    params.require(:match).permit(:name, :height, :weight)
  end
end
