class CreateGraphs < ActiveRecord::Migration[6.0]
  def change
    create_table :graphs do |t|
      t.integer :weight
      t.date :weigh_on
      t.string :name

      t.timestamps
    end
  end
end
