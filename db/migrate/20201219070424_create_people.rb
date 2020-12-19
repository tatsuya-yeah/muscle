class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.integer :height
      t.integer :weight
      t.string :name

      t.timestamps
    end
  end
end
