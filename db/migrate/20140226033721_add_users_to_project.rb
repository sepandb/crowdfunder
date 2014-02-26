class AddUsersToProject < ActiveRecord::Migration
  def up
  	add_column :projects, :user_id, :integer
  end
end
