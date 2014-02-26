class AddStartDateToProjects < ActiveRecord::Migration
  def up
  	add_column :projects, :start_date, :datetime
  	add_column :projects, :number_of_breakpoints, :integer
  end
end
