class Match < ApplicationRecord
  belongs_to :competitor
  validates :title, :text, presence: true
  #before_save :create_competitor_from_input

  def create_competitor_from_input
    puts "**************in create comp"
    puts "name is #{name}"
    puts "height is #{height}"
    puts "weigth is #{weight}"
    #create_competitor(name: name, height: height, weight: weight)
    self.competitor_id=Competitor.create!(:name => name, :height => height, :weight => weight)
  end

end
