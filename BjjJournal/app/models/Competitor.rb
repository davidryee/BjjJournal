class Competitor < ApplicationRecord
  #attr_accessor :name, :height, :weight

  before_validation :check_height, :check_weight
  validates :name, :height, :weight, presence: true

  before_save do
    self.name = "Roger Gracie" if name.blank?
  end

  private
    def check_height
      if(height > 84)
        height = 72
      end
    end

    def check_weight
      if(weight > 300)
        weight = 250
      end
    end
end