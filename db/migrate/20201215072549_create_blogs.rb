class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :training
      t.string :part
      t.text :about
      t.datetime :start_time

      t.timestamps
    end
  end
end
