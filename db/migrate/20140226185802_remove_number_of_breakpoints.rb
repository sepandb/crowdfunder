class RemoveNumberOfBreakpoints < ActiveRecord::Migration
  def up
  	remove_column :projects, :number_of_breakpoints
  end
end
