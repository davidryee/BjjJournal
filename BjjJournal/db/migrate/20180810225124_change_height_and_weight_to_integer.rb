class ChangeHeightAndWeightToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :competitors, :height, :integer
    change_column :competitors, :weight, :integer
  end
end
