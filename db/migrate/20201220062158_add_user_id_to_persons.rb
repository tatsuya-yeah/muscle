class AddUserIdToPersons < ActiveRecord::Migration[6.0]
  def change
    add_column :persons, :user_id, :integer
  end
end
