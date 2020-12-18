class AddUserIdToGraphs < ActiveRecord::Migration[6.0]
  def change
    add_column :graphs, :user_id, :integer
  end
end
