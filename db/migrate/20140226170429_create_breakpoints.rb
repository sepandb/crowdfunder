class CreateBreakpoints < ActiveRecord::Migration
  def change
    create_table :breakpoints do |t|
      t.integer :amount
      t.integer :project_id
      t.string :reward


      t.timestamps
    end
  end
end
