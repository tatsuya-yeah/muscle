class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :training
      t.string :part
      t.text :about

      t.timestamps
    end
  end
end
