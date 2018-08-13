class CreateBelts < ActiveRecord::Migration[5.1]
  def change
    create_table :belts do |t|
      t.string :color
      t.integer :rank
      t.timestamps
    end
  end
end
