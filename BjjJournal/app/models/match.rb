class Match < ApplicationRecord

  belongs_to :competitor, class_name: 'Competitor', foreign_key: 'competitor_id'
  #before_save :create_competitor_from_input

  def create_competitor_from_input(name, height, weight)
    #create_competitor(name: name, height: height, weight: weight)
    Competitor.create!(:name => name, :height => height, :weight => weight).id
  end

end
