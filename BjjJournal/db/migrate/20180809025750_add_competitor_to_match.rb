class AddCompetitorToMatch < ActiveRecord::Migration[5.1]
  def change
    add_reference :matches, :competitor, foreign_key: true
  end
end
