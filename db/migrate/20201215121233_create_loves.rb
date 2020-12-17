class CreateLoves < ActiveRecord::Migration[6.0]
  def change
    create_table :loves do |t|
      t.references :blog, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
