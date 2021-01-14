class AddFatToPersons < ActiveRecord::Migration[6.0]
  def change
    add_column :persons, :fat, :integer
  end
end
